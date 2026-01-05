import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/providers/graphql_client.dart';

class TrailersState {
  final List<Query$trailerVideos$trailerVideos$edges> edges;
  final String? endCursor;
  final bool hasNextPage;
  final bool isLoading;
  final bool isLoadingMore;
  final Object? error;

  TrailersState({
    required this.edges,
    this.endCursor,
    this.hasNextPage = false,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
  });

  TrailersState copyWith({
    List<Query$trailerVideos$trailerVideos$edges>? edges,
    String? endCursor,
    bool? hasNextPage,
    bool? isLoading,
    bool? isLoadingMore,
    Object? error,
  }) {
    return TrailersState(
      edges: edges ?? this.edges,
      endCursor: endCursor ?? this.endCursor,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
    );
  }
}

class TrailersNotifier extends StateNotifier<TrailersState> {
  TrailersNotifier(this._client) : super(TrailersState(edges: [])) {
    loadTrailers();
  }

  final GraphQLClient _client;
  static const int pageSize = 10;

  Future<void> loadTrailers({bool refresh = false}) async {
    if (refresh) {
      state = TrailersState(edges: [], isLoading: true);
    } else if (state.isLoading || state.isLoadingMore) {
      return;
    }

    state = state.copyWith(
      isLoading: refresh,
      isLoadingMore: !refresh,
    );

    try {
      final result = await _client.query(
        Options$Query$trailerVideos(
          variables: Variables$Query$trailerVideos(
            first: pageSize,
            after: refresh ? null : state.endCursor,
          ),
        ),
      );

      if (result.hasException) {
        state = state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          error: result.exception,
        );
        return;
      }

      final data = result.parsedData;
      if (data == null) {
        state = state.copyWith(
          isLoading: false,
          isLoadingMore: false,
        );
        return;
      }

      final newEdges = data.trailerVideos.edges ?? [];
      final pageInfo = data.trailerVideos.pageInfo;

      // Prevent duplicates by checking IDs
      final existingIds = state.edges
          .map((e) => e.node?.id)
          .whereType<String>()
          .toSet();

      final uniqueNewEdges = newEdges
          .where((e) => e.node?.id != null && !existingIds.contains(e.node!.id))
          .toList();

      state = state.copyWith(
        edges: refresh
            ? uniqueNewEdges
            : [...state.edges, ...uniqueNewEdges],
        endCursor: pageInfo?.endCursor,
        hasNextPage: pageInfo?.hasNextPage ?? false,
        isLoading: false,
        isLoadingMore: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        error: e,
      );
    }
  }

  Future<void> loadMore() async {
    if (state.hasNextPage && !state.isLoadingMore && !state.isLoading) {
      await loadTrailers();
    }
  }
}

final trailersProvider =
    StateNotifierProvider<TrailersNotifier, TrailersState>((ref) {
  final client = ref.watch(graphQLClientProvider);
  return TrailersNotifier(client);
});


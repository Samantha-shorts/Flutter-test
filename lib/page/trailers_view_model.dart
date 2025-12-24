import 'dart:collection';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/graphql/schema_typedefs.dart';
import 'package:samansa_flutter_test/providers/pagination_provider.dart';
import 'package:samansa_flutter_test/repositories/trailer_repository.dart';

final trailersViewModelProvider =
    AsyncNotifierProvider<TrailersViewModel, TrailersState>(
  TrailersViewModel.new,
);

class TrailersViewModel extends AsyncNotifier<TrailersState> {
  final int trailersPerPage = 10;

  final TrailersState _trailersState = TrailersState();

  late final TrailerRepository _repo = ref.read(trailerRepositoryProvider);

  @override
  Future<TrailersState> build() async {
    state = const AsyncValue<TrailersState>.loading();

    await _getTrailers(null);

    return state.value!;
  }

  bool canFetchNextTrailers(int page) =>
      page % trailersPerPage == trailersPerPage - 3;

  Future<void> _getTrailers(String? endCursor) async {
    final Query$trailerVideos$trailerVideos result = await _repo.getTrailers(
      limit: trailersPerPage,
      endCursor: endCursor,
    );

    _trailersState.addNextTrailers(result.edges!);

    state = AsyncData(_trailersState);

    ref.read(paginationProvider.notifier).state = PaginationState(
      cursor: result.pageInfo?.endCursor,
      hasNextPage: result.pageInfo?.hasNextPage ?? false,
      isLoadingMore: false,
    );
  }

  Future<void> nextTrailers() async {
    final PaginationState pagination = ref.read(paginationProvider);

    if (!pagination.hasNextPage || pagination.isLoadingMore) {
      return;
    }

    ref.read(paginationProvider.notifier).state = pagination.copyWith(
      isLoadingMore: true,
    );

    await _getTrailers(pagination.cursor);
  }
}

class TrailersState {
  Iterable<Trailer> get trailers => _trailers.values;
  final LinkedHashMap<String, Trailer> _trailers =
      LinkedHashMap.from(<String, Trailer>{});

  bool get isEmpty => trailers.isEmpty;

  void addNextTrailers(List<Trailer> trailers) {
    for (final Trailer trailer in trailers) {
      if (!_trailers.containsKey(trailer.node!.id)) {
        _trailers[trailer.node!.id] = trailer;
      }
    }
  }
}

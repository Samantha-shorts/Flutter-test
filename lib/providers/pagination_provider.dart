import 'package:hooks_riverpod/hooks_riverpod.dart';

final paginationProvider =
    StateProvider<PaginationState>((ref) => const PaginationState());

class PaginationState {
  const PaginationState({
    this.cursor,
    this.hasNextPage = true,
    this.isLoadingMore = false,
  });

  final String? cursor;
  final bool hasNextPage;
  final bool isLoadingMore;

  PaginationState copyWith({
    String? cursor,
    bool? hasNextPage,
    bool? isLoadingMore,
  }) =>
      PaginationState(
        cursor: cursor ?? this.cursor,
        hasNextPage: hasNextPage ?? this.hasNextPage,
        isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      );
}

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';

const _fetchCount = 4;

_makeFetchMoreOptions(String after) => FetchMoreOptions(
      variables: Variables$Query$trailerVideos(
        first: _fetchCount,
        after: after,
      ).toJson(),
      updateQuery: (previousResultData, fetchMoreResultData) {
        if (fetchMoreResultData == null || previousResultData == null) {
          return previousResultData;
        }
        final previousVideos = previousResultData["trailerVideos"];
        final fetchMoreVideos = fetchMoreResultData["trailerVideos"];
        fetchMoreResultData["trailerVideos"]["edges"] = [
          ...previousVideos["edges"],
          ...fetchMoreVideos["edges"],
        ];
        fetchMoreResultData["trailerVideos"]["pageInfo"] =
            fetchMoreVideos["pageInfo"];
        fetchMoreResultData["trailerVideos"]["totalCount"] =
            fetchMoreVideos["totalCount"];
        return fetchMoreResultData;
      },
    );

class UseTrailers {
  UseTrailers({
    required this.edges,
    required this.queryResult,
    required this.fetchNext,
  });

  final List<Query$trailerVideos$trailerVideos$edges>? edges;
  final QueryHookResult<Query$trailerVideos> queryResult;
  final Function(String after) fetchNext;
}

UseTrailers useTrailers() {
  final queryResult = useQuery$trailerVideos(
    Options$Query$trailerVideos(
      variables: Variables$Query$trailerVideos(first: _fetchCount),
    ),
  );

  final edges = useState<List<Query$trailerVideos$trailerVideos$edges>?>(null);

  final fetchNext = useCallback((String after) {
    queryResult.fetchMore(_makeFetchMoreOptions(after));
  }, [queryResult]);

  // queryResultはupdateUserViewedTrailerを呼ぶと変化するので配列が変わってしまう
  // 一度取得したものは`edges`に入れていく
  final fetchedEdges = queryResult.result.parsedData?.trailerVideos.edges;

  final list = edges.value ?? [];

  // 新しく取得したedges同士で重複があれば除外する
  final seenIds = <String>{};
  final uniqueFetchedEdges = fetchedEdges?.where((fetchedEdge) {
    final id = fetchedEdge.node?.id;
    if (id == null) return false; // null は除外
    if (seenIds.contains(id)) return false;
    seenIds.add(id);
    return true;
  }).toList();

  // 新しく取得したedgesの中から、過去取得しているあるものとの重複を除外する
  for (Query$trailerVideos$trailerVideos$edges uniqueFetchedEdge
      in uniqueFetchedEdges ?? []) {
    final uniqueFetchedEdgeId = uniqueFetchedEdge.node?.id;
    if (uniqueFetchedEdgeId == null) {
      continue;
    }
    if (list.every((e) => e.node?.id != uniqueFetchedEdgeId)) {
      list.add(uniqueFetchedEdge);
    }
  }

  edges.value = list;

  return UseTrailers(
    edges: edges.value,
    queryResult: queryResult,
    fetchNext: fetchNext,
  );
}

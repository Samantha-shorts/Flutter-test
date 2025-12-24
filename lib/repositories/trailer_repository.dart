import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/providers/graphql_client.dart';

final trailerRepositoryProvider = Provider<TrailerRepository>((ref) {
  final client = ref.read(graphQLClientProvider);
  return TrailerRepository(client);
});

class TrailerRepository {
  TrailerRepository(this.client);

  final GraphQLClient client;

  Future<Query$trailerVideos$trailerVideos> getTrailers({
    required int limit,
    String? endCursor,
  }) async {
    final QueryResult<Query$trailerVideos> result =
        await client.query(Options$Query$trailerVideos(
      variables: Variables$Query$trailerVideos(
        first: limit,
        after: endCursor,
      ),
      cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      fetchPolicy: FetchPolicy.networkOnly,
    ));

    if (result.hasException) {
      throw result.exception!;
    }

    return result.parsedData!.trailerVideos;
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/query/trailerVideos.graphql.dart';
import 'package:samansa_flutter_test/page/trailer_view.dart';

class TrailersPage extends HookConsumerWidget {
  const TrailersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // APIから取得したデータが入る変数
    final trailers = <Query$trailerVideos$trailerVideos$edges>[];

    if (trailers?.isEmpty ?? true) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Trailers",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            "動画がありません",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Trailers",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async => {
          // データの再取得処理をここに追加
        },
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final trailer = trailers![index].node!;
            return TrailerView(
              trailer: trailer,
              // controller: ここにVideoPlayerControllerを渡す
            );
          },
          itemCount: trailers?.length,
        ),
      ),
    );
  }
}

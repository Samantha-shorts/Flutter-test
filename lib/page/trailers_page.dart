import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/graphql/schema_typedefs.dart';
import 'package:samansa_flutter_test/page/trailer_view.dart';
import 'package:samansa_flutter_test/page/trailers_view_model.dart';
import 'package:samansa_flutter_test/providers/pagination_provider.dart';
import 'package:samansa_flutter_test/widgets/texts/empty_text.dart';
import 'package:samansa_flutter_test/widgets/texts/error_text.dart';
import 'package:samansa_flutter_test/widgets/loading.dart';

class TrailersPage extends HookConsumerWidget {
  const TrailersPage({
    super.key,
  });

  Future<void> _onRefresh(WidgetRef ref) async {
    ref.invalidate(trailersViewModelProvider);
    ref.invalidate(paginationProvider);
  }

  void _onPageChanged(WidgetRef ref, int page) {
    final trailersViewModel = ref.read(trailersViewModelProvider.notifier);

    if (trailersViewModel.canFetchNextTrailers(page)) {
      trailersViewModel.nextTrailers();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trailers = ref.watch(trailersViewModelProvider);
    final pagination = ref.watch(paginationProvider);

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
      body: SafeArea(
        child: trailers.when(
          data: (TrailersState data) {
            if (data.isEmpty) {
              return EmptyText(
                onRefresh: () => _onRefresh(ref),
              );
            }

            final Iterable<Trailer> trailers = data.trailers;

            return RefreshIndicator(
              onRefresh: () => _onRefresh(ref),
              child: PageView.builder(
                onPageChanged: (int page) => _onPageChanged(ref, page),
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index == trailers.length) {
                    return const Loading();
                  }

                  final trailer = trailers.elementAt(index).node!;

                  return TrailerView(
                    trailer: trailer,
                  );
                },
                itemCount: trailers.length + (pagination.hasNextPage ? 1 : 0),
              ),
            );
          },
          loading: () => const Loading(),
          error: (e, _) => ErrorText(
            onRetry: () => _onRefresh(ref),
            error: e.toString(),
          ),
        ),
      ),
    );
  }
}

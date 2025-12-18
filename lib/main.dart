import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:samansa_flutter_test/page/trailers_page.dart';
import 'package:samansa_flutter_test/providers/graphql_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final graphQLClient = ref.watch(graphQLClientProvider);
    final client = useMemoized(() => ValueNotifier(graphQLClient));

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Trailer Videos',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TrailersPage(),
      ),
    );
  }
}

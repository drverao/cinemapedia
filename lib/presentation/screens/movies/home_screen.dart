import 'package:cinemapedia/presentation/providers/movies/movies_provider.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _HomeView(),
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMoview = ref.watch(nowPlayingMoviesProvider);
    return Column(
      children: [
        const CustomAppbar(),
        Expanded(
            child: ListView.builder(
                itemCount: nowPlayingMoview.length,
                itemBuilder: (context, index) {
                  final movie = nowPlayingMoview[index];
                  return ListTile(
                    title: Text(movie.title),
                  );
                }))
      ],
    );
  }
}

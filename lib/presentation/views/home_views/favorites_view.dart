import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavoritesView'),
      ),
      body: const Center(
          child: Text(
        'FavoritesView is working',
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}

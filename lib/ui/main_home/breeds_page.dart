import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:el_gato/providers/content/cat_breeds/cat_breeds_provider.dart';
import 'package:el_gato/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///
class BreedsPage extends ConsumerWidget {
  ///
  const BreedsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(catBreedsProvider).maybeWhen(
            success: (breeds) => BreedsListWidget(breeds: breeds),
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.cyanColor,
                ),
              );
            },
            orElse: () {
              return const Center(
                child: Text('Oh No!'),
              );
            },
          ),
    );
  }
}

/// The breeds list widget to show all breeds
class BreedsListWidget extends ConsumerWidget {
  ///
  const BreedsListWidget({super.key, required this.breeds});

  /// The passed in list of cat breeds
  final List<CatBreed> breeds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: breeds
          .map(
            (e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.description),
            ),
          )
          .toList(),
    );
  }
}

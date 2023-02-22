import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The breed detail dialog widget
class BreedDetailDialogWidget extends ConsumerWidget {
  /// Constructor call

  const BreedDetailDialogWidget({super.key, required this.breed});

  /// The breed to show
  final CatBreed breed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            breed.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(breed.description,
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

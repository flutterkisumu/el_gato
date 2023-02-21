import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:el_gato/providers/content/cat_breeds/cat_breeds_provider.dart';
import 'package:el_gato/style/app_colors.dart';
import 'package:el_gato/ui/main_home/feed/breeds/breed_detail_dialog_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The breeds page to show all the breeds
class BreedsPage extends ConsumerWidget {
  /// Constructor call
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
    return CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: () {
            return ref
                .read(catBreedsProvider.notifier)
                .fetchBreeds(refresh: true);
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => BreedTileWidget(
              breed: breeds[index],
            ),
            childCount: breeds.length,
          ),
        ),
      ],
    );
  }
}

/// The breed tile widget to show a single breed
class BreedTileWidget extends ConsumerWidget {
  /// Constructor call
  const BreedTileWidget({super.key, required this.breed});

  /// The breed to show
  final CatBreed breed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        /// Show the breed detail dialog
        showCupertinoModalPopup(
          context: context,
          builder: (_) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: CupertinoPopupSurface(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: BreedDetailDialogWidget(breed: breed),
                ),
              ),
            );
          },
        );
      },
      title: Text(breed.name),
      subtitle: Text(
        breed.description,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

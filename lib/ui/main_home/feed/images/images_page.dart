import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_gato/models/cat_image/cat_image.dart';
import 'package:el_gato/providers/content/images/images_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

/// This is the main widget for the [ImagesPage] widget
class ImagesPage extends ConsumerWidget {
  /// The constructor for the [ImagesPage] widget
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(catImagesProvider).maybeWhen(
          orElse: () => const Center(
            child: Text('No images found'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (images) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: MasonryView(
              listOfItem: images.map((e) => e.url).toList(),
              numberOfColumn: MediaQuery.of(context).size.height ~/
                  MediaQuery.of(context).size.width,
              itemBuilder: (imageUrl) {
                return ImageWidget(
                  catImage: images.firstWhere(
                    (element) => element.url == imageUrl.toString(),
                  ),
                );
              },
            ),
          ),
        );
  }
}

/// The image widget to view the image
class ImageWidget extends ConsumerWidget {
  /// The constructor
  const ImageWidget({super.key, required this.catImage});

  /// The image catImage
  final CatImage catImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InstaImageViewer(
      child: CachedNetworkImage(
        imageUrl: catImage.url!,
      ),
    );
  }
}

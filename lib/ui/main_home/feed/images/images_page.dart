import 'package:el_gato/providers/content/images/images_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the main widget for the [ImagesPage] widget
class ImagesPage extends ConsumerWidget {
  /// The constructor for the [ImagesPage] widget
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(catImagesProvider).whenOrNull(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (images) => SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Wrap(
                direction: Axis.vertical,
                children: images
                    .map(
                      (image) => Image.network(
                        image.url!,
                        height: double.parse(image.height!.toString()),
                        width: double.parse(image.width!.toString()),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
    );
  }
}

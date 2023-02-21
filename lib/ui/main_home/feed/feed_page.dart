import 'package:el_gato/style/app_colors.dart';
import 'package:el_gato/ui/main_home/feed/breeds/breeds_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The feed widget that acts as a base for all feed items

class FeedPage extends ConsumerWidget {
  /// The constructor
  FeedPage({super.key});

  /// The bucket to store the page states
  final PageStorageBucket bucket = PageStorageBucket();

  /// A list of all the children
  final children = [
    const BreedsPage(
      key: PageStorageKey<String>('breedsPage'),
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Feed',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 8,
          ),
          CupertinoSegmentedControl<int>(
            children: const {
              0: Text('Breeds'),
              1: Text('Pictures'),
              2: Text('Favorites')
            },
            selectedColor: AppColors.darkCyanColor,
            borderColor: AppColors.darkCyanColor,
            groupValue: ref.watch(feedIndexProvider),
            onValueChanged: (val) {
              ref.read(feedIndexProvider.notifier).value = val;
            },
          ),
          Expanded(
            child: PageStorage(
                bucket: bucket, child: children[ref.watch(feedIndexProvider)]),
          )
        ],
      ),
    );
  }
}

/// The global declaration of the [FeedIndexNotifier]
final feedIndexProvider = StateNotifierProvider<FeedIndexNotifier, int>(
  (ref) => FeedIndexNotifier(),
);

/// The feed index notifier
class FeedIndexNotifier extends StateNotifier<int> {
  /// The constructor
  FeedIndexNotifier() : super(0);

  /// The state getter
  int get value => state;

  /// The state setter
  set value(int val) => state = val;
}

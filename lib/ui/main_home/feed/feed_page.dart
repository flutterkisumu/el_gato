import 'package:el_gato/ui/main_home/breeds_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The feed widget that acts as a base for all feed items

class FeedPage extends ConsumerWidget {
  /// The constructor
  FeedPage({super.key});
  final PageStorageBucket bucket = PageStorageBucket();
  final children = [
    const BreedsPage(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('Feed'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CupertinoSegmentedControl<int>(
            children: const {
              0: Text('Breeds'),
              1: Text('Pictures'),
              2: Text('Favorites')
            },
            groupValue: ref.watch(feedIndexProvider),
            onValueChanged: (val) {
              ref.read(feedIndexProvider.notifier).changeValue(val);
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

  /// The state update method
  void changeValue(int val) {
    state = val;
  }
}

// ignore_for_file: use_colored_box

import 'package:el_gato/providers/bottom_nav/bottom_nav_provider.dart';
import 'package:el_gato/ui/main_home/feed/images/images_page.dart';
import 'package:el_gato/ui/main_home/feed/read_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the landing page
class MainHomePage extends ConsumerWidget {
  /// The constructor
  MainHomePage({super.key});

  /// The bucket to store the page states
  final PageStorageBucket bucket = PageStorageBucket();

  /// The items
  final items = [
    BottomNavItem(
      icon: const Icon(
        CupertinoIcons.home,
        color: Colors.white,
      ),
      tooltip: 'Home',
      label: 'Home',
    ),
    BottomNavItem(
      icon: const Icon(
        CupertinoIcons.book,
        color: Colors.white,
      ),
      label: 'Read',
      tooltip: 'Read more about cats',
    ),
    // BottomNavItem(
    //   icon: const Icon(
    //     CupertinoIcons.search,
    //     color: Colors.white,
    //   ),

    //   label: 'Search',
    // ),
    // BottomNavItem(
    //   icon: const Icon(
    //     CupertinoIcons.settings,
    //     color: Colors.white,
    //   ),
    //   label: 'Settings',
    // ),
  ];

  /// The pages
  final pages = <Widget>[
    const ImagesPage(
      key: PageStorageKey<String>('imagesPage'),
    ),
    ReadPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageStorage(
      bucket: bucket,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('El Gato'),
              ),
            ),
            SliverFillRemaining(
              child: PageStorage(
                bucket: bucket,
                child: pages[ref.watch(mainBottomNavProvider)],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: ref.watch(mainBottomNavProvider),
          onDestinationSelected: (value) {
            ref.read(mainBottomNavProvider.notifier).state = value;
          },
          destinations: items
              .map(
                (e) => NavigationDestination(
                  tooltip: items[items.indexOf(e)].tooltip,
                  icon: items[items.indexOf(e)].icon,
                  selectedIcon: items[items.indexOf(e)].icon,
                  
                  label: items[items.indexOf(e)].label,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

/// Bottom nav item class

class BottomNavItem {
  /// Constructor
  BottomNavItem(
      {required this.icon, required this.label, required this.tooltip,});

  /// The icon
  final Icon icon;

  /// The label
  final String label;

  /// The tooltip
  final String tooltip;
}

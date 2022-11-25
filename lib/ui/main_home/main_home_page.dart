import 'package:el_gato/providers/bottom_nav/bottom_nav_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the landing page
class MainHomePage extends ConsumerWidget {
  /// The constructor
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// The items
    final items = [
      BottomNavItem(icon: const Icon(CupertinoIcons.home), label: 'Home'),
      BottomNavItem(
        icon: const Icon(CupertinoIcons.list_bullet_below_rectangle),
        label: 'Feed',
      ),
      BottomNavItem(icon: const Icon(CupertinoIcons.search), label: 'Search'),
      BottomNavItem(
        icon: const Icon(CupertinoIcons.settings),
        label: 'Settings',
      ),
    ];
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Theme.of(context).colorScheme.secondary,
        currentIndex: ref.watch(mainBottomNavProvider),
        onTap: (val) {
          ref.read(mainBottomNavProvider.notifier).setvalue(val);
        },
        items: items
            .map(
              (e) => BottomNavigationBarItem(
                icon: e.icon,
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

/// Bottom nav item class

class BottomNavItem {
  /// Constructor
  BottomNavItem({required this.icon, required this.label});

  /// The icon
  final Icon icon;

  /// The label
  final String label;
}

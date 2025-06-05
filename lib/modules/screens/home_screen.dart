import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/modules/components/bottom_nav_item.dart';
import 'package:stroll_demo/modules/providers/nav_provider.dart';
import 'package:stroll_demo/modules/tabs/bonfire_tab.dart';
import 'package:stroll_demo/modules/tabs/card_tab.dart';
import 'package:stroll_demo/modules/tabs/chat_tab.dart';
import 'package:stroll_demo/modules/tabs/profile_tab.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const List<Widget> pages = [
    CardTab(),
    BonfireTab(),
    ChatTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(navProvider).index;

    return Container(
      decoration: BoxDecoration(gradient: AppColor.gradient),
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(
              iconName: 'card',
              isActive: selectedIndex == 0,
              onPress: () => ref.read(navProvider.notifier).currentPosition = 0,
            ),
            BottomNavItem(
              iconName: 'bonfire',
              itemNumber: ' ',
              isActive: selectedIndex == 1,
              onPress: () => ref.read(navProvider.notifier).currentPosition = 1,
            ),
            BottomNavItem(
              iconName: 'chat',
              itemNumber: '10',
              isActive: selectedIndex == 2,
              onPress: () => ref.read(navProvider.notifier).currentPosition = 2,
            ),
            BottomNavItem(
              iconName: 'user',
              isActive: selectedIndex == 3,
              onPress: () => ref.read(navProvider.notifier).currentPosition = 3,
            ),
          ],
        ),
      ),
    );
  }
}

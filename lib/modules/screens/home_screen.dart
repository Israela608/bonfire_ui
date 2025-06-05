import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/core/utils/utils.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.dark,
          currentIndex: selectedIndex,
          onTap: (index) =>
              ref.read(navProvider.notifier).currentPosition = index,
          items: [
            BottomNavItem(
              iconName: ImageIcon(AssetImage(getImagePath('home'))),
              activeIcon: ImageIcon(AssetImage(getImagePath('home-bold'))),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(getImagePath('consultation'))),
              activeIcon:
                  ImageIcon(AssetImage(getImagePath('consultation-bold'))),
              label: 'Consultation',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(getImagePath('medication'))),
              activeIcon:
                  ImageIcon(AssetImage(getImagePath('medication-bold'))),
              label: 'Medications',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(getImagePath('account'))),
              activeIcon: ImageIcon(AssetImage(getImagePath('account-bold'))),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.iconName,
    this.itemNumber = 0,
    required this.isActive,
  });

  final String iconName;
  final int itemNumber;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getSvg(
          svg: iconName,
          height: 44,
          width: 44,
          color: isActive ? AppColor.white : null,
        ),
        if (itemNumber > 0)
          Positioned(
            top: 8.h,
            right: 0.w,
            child: SizedBox(
              width: 16.w,
              height: 13.h,
              child: Container(
                padding: EdgeInsets.all(1.5.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  itemNumber.toString(),
                  style: proximaStyle(
                    fontSize: 7,
                    color: AppColor.dark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

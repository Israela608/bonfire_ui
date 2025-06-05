import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/core/utils/utils.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.iconName,
    this.itemNumber = '',
    required this.isActive,
    required this.onPress,
  });

  final String iconName;
  final String itemNumber;
  final bool isActive;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          getSvg(
            svg: iconName,
            height: 44,
            width: 44,
            color: isActive ? AppColor.white : null,
          ),
          if (itemNumber.isNotEmpty)
            Positioned(
              top: 8.h,
              right: 0.w,
              child: Container(
                width: 16.w,
                height: 13.h,
                decoration: BoxDecoration(
                  color: AppColor.dark,
                ),
                child: Container(
                  margin: EdgeInsets.all(1.5.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColor.primary,
                  ),
                  child: Center(
                    child: Text(
                      itemNumber,
                      style: proximaStyle(
                        fontSize: 7,
                        color: AppColor.dark,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

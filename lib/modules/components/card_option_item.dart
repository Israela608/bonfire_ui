import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/core/utils/extensions.dart';

class CardOptionsItem extends StatelessWidget {
  const CardOptionsItem({
    super.key,
    required this.letter,
    required this.text,
    required this.isSelected,
    required this.onPress,
  });

  final String letter;
  final String text;
  final bool isSelected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 65.h,
        padding: EdgeInsets.only(
          left: 10.w,
          right: 9.w,
          top: 13.5.h,
          bottom: 13.5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.card,
          border: isSelected
              ? Border.all(
                  width: 2.h,
                  color: AppColor.primary,
                )
              : null,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: isSelected ? AppColor.primary : AppColor.text2,
              child: CircleAvatar(
                radius: 9.r,
                backgroundColor: isSelected ? AppColor.primary : AppColor.card,
                child: Text(
                  letter,
                  style: proximaStyle(
                    fontSize: 12,
                    color: isSelected ? AppColor.primaryText : AppColor.text4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            9.width,
            Expanded(
              child: Text(
                text,
                textScaler: TextScaler.noScaling,
                style: proximaStyle(
                  fontSize: 14,
                  color: AppColor.text4,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

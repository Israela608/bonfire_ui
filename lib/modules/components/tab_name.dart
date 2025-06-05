import 'package:flutter/material.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';

class TabName extends StatelessWidget {
  const TabName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: proximaStyle(
          fontSize: 20,
          color: AppColor.primaryText,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

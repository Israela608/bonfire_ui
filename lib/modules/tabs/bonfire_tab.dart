import 'package:flutter/material.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/modules/components/tab_name.dart';

class BonfireTab extends StatelessWidget {
  const BonfireTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabName(name: 'Bonfire Page');
  }
}

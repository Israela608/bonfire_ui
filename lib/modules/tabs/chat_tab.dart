import 'package:flutter/material.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/modules/components/tab_name.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabName(name: 'Chat Page');
  }
}

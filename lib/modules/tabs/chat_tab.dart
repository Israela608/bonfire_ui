import 'package:flutter/material.dart';
import 'package:stroll_demo/modules/components/tab_name.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabName(name: 'Chat Page');
  }
}

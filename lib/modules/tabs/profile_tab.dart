import 'package:flutter/material.dart';
import 'package:stroll_demo/modules/components/tab_name.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabName(name: 'Profile Page');
  }
}

import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfileModuleScreen extends StatefulWidget {
  const ProfileModuleScreen({super.key});

  @override
  State<ProfileModuleScreen> createState() => _ProfileModuleScreenState();
}

class _ProfileModuleScreenState extends State<ProfileModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Profile tab screen')],
          ),
        ),
      ),
    );
  }
}

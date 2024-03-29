// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SearchModuleScreen extends StatefulWidget {
  const SearchModuleScreen({super.key});

  @override
  State<SearchModuleScreen> createState() => _SearchModuleScreenState();
}

class _SearchModuleScreenState extends State<SearchModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Поиск'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Тут просто текст поиск')],
          ),
        ),
      ),
    );
  }
}

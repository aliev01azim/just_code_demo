// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:code_demo/di.dart';
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();
  di;
  runApp(const MyApp());
}

  // hive не внутри di из-за принципа разделения ответственностей
  //всё же HiveService больше про работу с данными,а di про зависимости

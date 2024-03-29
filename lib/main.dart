// Flutter imports:
import 'dart:async';

import 'package:code_demo/src/infrastructure/utils/helpers.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:code_demo/di.dart';
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'src/app.dart';

// hive не внутри di из-за принципа разделения ответственностей
//всё же HiveService больше про работу с данными,а di про зависимости
void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await HiveService.init();
    await di.initDependencies();
    runApp(const App());
  }, (exc, stackTrace) {
    logger.e(exc, stackTrace: stackTrace);
  });
}

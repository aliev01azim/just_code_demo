//вспомогательные классы и утилиты, которые
//могут использоваться в различных частях приложения

import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 5,lineLength: 200),
);

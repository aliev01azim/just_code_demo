//вспомогательные классы и утилиты, которые
//могут использоваться в различных частях приложения

// Package imports:
// ignore: depend_on_referenced_packages

// Package imports:
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(methodCount: 5,lineLength: 200),
);

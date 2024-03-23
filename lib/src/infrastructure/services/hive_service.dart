//конфигурация,настройка и работа с бд

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/consts/consts.dart';
import 'package:code_demo/src/modules/auth/data/dto/token.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AuthTokenAdapter(),override: true);
    await Hive.openBox(Boxes.tokenBox.name);
  }

  static bool isRegistered() {
    final tokenBox = Hive.box(Boxes.tokenBox.name);
    return tokenBox.get('token') != null;
  }

  static Future<void> saveToken(AuthToken token) async {
    final tokenBox = Hive.box(Boxes.tokenBox.name);
    return await tokenBox.put('token', token);
  }

  static AuthToken? getToken() {
    final tokenBox = Hive.box(Boxes.tokenBox.name);
    return tokenBox.get('token');
  }

  static Future<void> deleteToken() async {
    final tokenBox = Hive.box(Boxes.tokenBox.name);
    return await tokenBox.delete('token');
  }

  static Future<void> putItem<T>(
      {required T item, required Boxes boxEnum, required String key}) async {
    final openBox = await Hive.openBox(boxEnum.name);
    await openBox.put(key, item);
  }

  static Future<T> getItem<T>(
      {required Boxes boxEnum, required dynamic key}) async {
    final openBox = await Hive.openBox(boxEnum.name);
    return openBox.get(key) as T;
  }
}

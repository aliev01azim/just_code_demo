// Flutter imports:
import 'package:code_demo/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//всякие константы
const baseUrl = 'https://jsonplaceholder.typicode.com/';

class Images {}

class AppColors {
  static const black = Colors.black;
  static const greenLight = Color.fromRGBO(30, 216, 96, 1);
  static const greyDark = Color.fromRGBO(65, 65, 65, 1);
  static const focusedField = Color.fromRGBO(167, 167, 167, 1);
  static const red = Color.fromRGBO(195, 44, 48, 1);
}

enum Boxes { userBox, tokenBox }

const supportedLocales = [
  Locale('en', ''),
  Locale('ru', ''),
];

const localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
const restorationScopeId = 'restorationIdAfterPhoneRotate'; //For example)



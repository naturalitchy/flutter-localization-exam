import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_exam01/localization.dart';

/*
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();     // use easy_localization.

  runApp(
    EasyLocalization(
      // supportedLocales: [Locale('uz', 'UZ'), Locale('ko', 'KO')],
      supportedLocales: [Locale('uz'), Locale('ko')],
      path: 'assets/translations/',
      // fallbackLocale: Locale('uz2','UZ'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Localization(),
    );
  }
}


 */






Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ko')],
        path: 'assets/translations/', // <-- change the path of the translation files
        // fallbackLocale: Locale('en', 'US'),
        child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        // home: Localization(),
    );
  }
}
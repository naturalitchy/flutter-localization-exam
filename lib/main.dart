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


/**
 *
 * 이거 처음에 나오는 기준이 뭐냐.
 * 어떻게 해서 es-US부터 나오는지 찾아라.
 * 그리고, 클래스 여러개 만들어서 전체 테스트 해라. 버튼은 appBar를 만들어서 어디든 끌고다니고.
 * 버튼을 눌렀을때 하나의 화면만 변하는게 아니라 다른 화면도 변해야 한다.
 * 그리고 다시 다른화면으로 이동하였을때 상태를 그대로 유지하고 있어야 한다.
 */






Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ko', 'KO')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ko', 'KO'),
        child: MyApp(),

    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // context.setLocale(Locale('en', 'US'));
  }

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
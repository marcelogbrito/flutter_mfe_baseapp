import 'package:flutter/material.dart';
import 'package:micro_app_login/app/micro_app_login_resolver.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';
import 'package:micro_core/app/microapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generalRoute,
      initialRoute: '/login',
    );
  }

  @override
  // TODO: implement baseRoutes
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  // TODO: implement microApps
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
      ];
}

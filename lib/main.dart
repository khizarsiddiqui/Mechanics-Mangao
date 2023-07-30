import 'package:flutter/material.dart';
import 'package:mechanics_mangao/routes.dart';
import 'package:mechanics_mangao/screens/splash/splash_screen.dart';
import 'package:mechanics_mangao/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mechanics Mangao',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

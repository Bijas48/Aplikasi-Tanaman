import 'package:flutter/material.dart';
import 'package:appplant/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EncycloFlora',
      theme: ThemeData(fontFamily: 'Lexend'),
      home: SplashScreen(),
      // home: MainScreen(),
    );
  }
}

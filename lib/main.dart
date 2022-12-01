import 'package:flutter/material.dart';
import 'package:calculator/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Noto',
      ),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoponline/home/home_screen.dart';
import 'package:shoponline/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Thoi Trang',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const SignInPage2(),
    );
  }
}

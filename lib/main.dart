import 'package:flutter/material.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/login_page.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/sign_up_page.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/welcome_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

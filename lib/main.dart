import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/auth_controller.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/login_page.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/sign_up_page.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/welcome_page.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
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

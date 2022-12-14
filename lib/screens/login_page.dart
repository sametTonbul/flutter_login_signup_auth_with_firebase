import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/auth_controller.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/sign_up_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;
    //print(pageHeight);// result = 805.0909
    //print(pageWidth);// result = 392.7272
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: pageWidth,
              height: pageHeight * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/loginimg.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              // width: pageWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign into your account',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon:
                            Icon(Icons.email, color: Colors.deepOrangeAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.password_outlined,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        'Forgot your Password?',
                        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
                AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: pageWidth * 0.65,
                height: pageWidth * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage(
                      "images/loginbtn.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                      text: ' Create',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

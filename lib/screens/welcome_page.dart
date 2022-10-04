import 'package:flutter/material.dart';
import 'package:flutter_login_signup_auth_with_firebase/screens/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;

  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    double pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: pageWidth,
            height: pageHeight * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/signup.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: pageHeight * 0.14),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage('images/profilfoto.jpg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: pageWidth,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54)),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
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
                  'Log Out',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //svg image
            SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
            //text field input for email
            const SizedBox(height: 64),
            //text field input for password
            //button login
            //transitioning to singing up
          ],
        ),
      ),
      ),
    );
  }
}

// class SvgPicture {
//   static asset(String s, {Color color, int height}) {}
// }
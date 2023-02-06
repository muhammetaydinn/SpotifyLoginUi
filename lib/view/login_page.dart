import 'package:flutter/material.dart';

import '../widgets/forgot_password_button.dart';
import '../widgets/login_button.dart';
import '../widgets/sign_up_button.dart';
import '../widgets/spotify_logo.dart';
import '../widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = true;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: width,
                height: height,
                color: const Color(0xff121212),
              ),
            ),
            bgImage(width, height),
            SizedBox(
              width: width,
              height: height,
              child: ListView(
                padding: EdgeInsets.only(top: height * 0.3),
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SpotifyLogo(),
                  const SizedBox(height: 15),
                  loginText(),
                  const SizedBox(height: 15),
                  const TextFieldWidget(
                      labelText: "Username", obscureText: false),
                  const SizedBox(height: 15),
                  const TextFieldWidget(
                      labelText: "Password", obscureText: true),
                  const ForgotPassword(),
                  const LoginButton(),
                  const SizedBox(height: 15),
                  const SignUpButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text loginText() {
    return const Text(
      "Log in to continue.",
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      textAlign: TextAlign.center,
    );
  }

  Positioned bgImage(double width, double height) {
    return Positioned(
      child: Container(
        width: width,
        height: height * 0.5,
        color: Colors.red,
        child: Image.asset("assets/images/login_bg.png", fit: BoxFit.cover),
      ),
    );
  }
}

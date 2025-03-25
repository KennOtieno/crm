import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext: context) {
    return Scaffold(
      backgroundColor: Colors.grey(300),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),

              // Below is the intended UI

              // Padlock logo - to represent Sign In
              const Icon(
                Icons.lock,
                size: 100,
              )

              const SizedBox(height: 50),

              // Welcome back Sign In Text

              // E-mail Text Field

              //  Passwoed TextField

              // Forgot Password?

              // Sign In button

              // Continue with Google or IOS option

              // Don't have an account? Sign UP.
            ],
          ),
        )),
    )

  }
}
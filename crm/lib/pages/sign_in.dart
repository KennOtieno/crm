import 'package:flutter/material.dart';
import 'package:crm/components/my_textfield.dart';
import 'package:crm/components/my_button.dart';
import 'package:crm/components/a_square_tile.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key}) {
    // Initialize controllers in constructor
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  // Sign User In
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Padlock logo - to represent Sign In
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Welcome back Sign In Text
              Text(
                'Welcome back. Sign In.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // E-mail Text Field
              MyTextField(
                controller: emailController,
                hintText: 'Email Address',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //  Password TextField
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Forgot Password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Sign In button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),

              // 'Or Continue With' Text, Divided by Divider
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ))
                  ],
                ),
              ),

              // Google and IOS logo for signing In
              const Row(
                children: [
                  // Google Logo
                  ASquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(width: 10),

                  // IOS Logo
                  ASquareTile(imagePath: 'lib/images/ios.png')
                ],
              ),

              const SizedBox(height: 50),

              // Don't have an account? Sign UP.
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

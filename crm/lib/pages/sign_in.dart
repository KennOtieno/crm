import 'package:flutter/material.dart';
import 'package:crm/components/my_textfield.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key}) {
    // Initialize controllers in constructor
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
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
            
              // Forgot Password?
            
              // Sign In button
            
              // Continue with Google or IOS option
            
              // Don't have an account? Sign UP.
            ],
          ),
        ),
      ),
    );
  }
}
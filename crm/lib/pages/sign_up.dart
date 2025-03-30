import 'package:flutter/material.dart';
import 'package:crm/components/my_textfield.dart';
import 'package:crm/components/my_second_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key}); {
    // Initialize the Controllers 
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
  }

   final TextEditingController emailController;
   final TextEditingController passwordController;
   final TextEditingController confirmpasswordController;

  // Declare User Sign Up
  signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Text Saying 'Welcome. Sign Up.
              const Text('Hey, Sign Up.',
              style: TextStyle(color: Colors.grey,
              fontSize: 16,
              ),
              ),

              const SizedBox(height: 25),

              // Input E-mail Address Text Field
              MyTextField(
                controller: emailController,
                hintText: 'Input a valid E-mail Address',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Input Password Text Field
              MyTextField(
                controller: passwordController,
                 hintText: 'Input your password.',
                  obscureText: true,
                  ),

                  const SizedBox(height: 10),

              // Confirm Password Text Field
              MyTextField(
                controller: confirmpasswordController,
                 hintText: 'Confirm Password.',
                  obscureText: true,
                  ),

                  const SizedBox(height: 10),

              // Sign Up Button
              MySecondButton(
                onTap: signUserUp,
              ),

              const SizedBox(height: 10),

              // Have ann account? Sign IN.
              const Text(
                'Have an account?',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 4),
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ) 
      )
      );
  }
}

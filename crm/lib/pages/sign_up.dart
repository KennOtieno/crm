import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              Text('Hey, Sign Up.',
              style: TextStyle(color: Colors.grey,
              fontSize: 16,
              ),
              ),

              const SizedBox(25),

              // Input E-mail Address Text Field

              // Input Password Text Field

              // Confirm Password Text Field

              // Sign Up Button

              // Have ann account? Sign IN.
            ],
          ),
        ) 
      )
      ),
  }
}

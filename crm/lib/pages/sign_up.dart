import 'package:flutter/material.dart';
import 'package:crm/components/my_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key}); {
    // Initialize the Controllers 
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmpasswordController;

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
              MyTextField(
                controller: emailController,
                hintText: 'Input a valid E-mail Address',
                obscureText: false,
              ),

              const SizedBox(10),

              // Input Password Text Field
              MyTextField(
                controller: passwordController,
                 hintText: 'Input your password.',
                  obscureText: true,
                  ),

                  const SizedBox(10),

              // Confirm Password Text Field
              MyTextField(
                controller: confirmpasswordController,
                 hintText: 'Confirm Password.',
                  obscureText: true,
                  )

                  const SizedBox(10),

              // Sign Up Button

              // Have ann account? Sign IN.
            ],
          ),
        ) 
      )
      ),
  }
}

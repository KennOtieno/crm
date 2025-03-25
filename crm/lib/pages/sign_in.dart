import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext = context) {
    return Scaffold(
      backgroundColor: Colors.grey(300),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              widget(
                children: const [
                  SizedBox(height: 50,),
                
                  // Below is the intended UI
                  // Padlock logo - to represent Sign In
                  Icon(
                    Icons.lock,
                    size: 100,
                  )
                
                  const SizedBox(height: 50),
                
                  // Welcome back Sign In Text
                  Text(
                    'Welcome back. Sign In.',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      )
                  )
                
                  const SizedBox(height: 25),
                
                  // E-mail Text Field
                 MyTextField,

                  //  Password TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,)
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      )
                      fillColor: Colors.grey.shade200,
                      filled: true
                    ),
                  )
                  )
                
                  // Forgot Password?
                
                  // Sign In button
                
                  // Continue with Google or IOS option
                
                  // Don't have an account? Sign UP.
                ],
              ),
            ],
          ),
        )),
    )

  }
}
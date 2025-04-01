import 'package:crm/pages/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:crm/pages/home.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Supabase.instance.client.auth.onAuthStateChange,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            final session = snapshot.data?.session;

            // If the user is Signed In, go to Home Page. Else, remain on Sign In Page
            if (session != null) {
              return const HomePage();
            } else {
              return SignInPage();
            }
          }),
    );
  }
}

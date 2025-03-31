import 'package:flutter/material.dart';
import 'pages/sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding();
  await Supabase.initialize(
    url: 'https://rphdapwljidhdyrxflhg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJwaGRhcHdsamlkaGR5cnhmbGhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM0MzQxMTEsImV4cCI6MjA1OTAxMDExMX0.aDEOhj-4YNUMnzXYIuYwXZCJSfaoE2MqtjfaF7yDTOk',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:huntechelp_admin/pages/home.dart';
import 'package:huntechelp_admin/pages/loginpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}

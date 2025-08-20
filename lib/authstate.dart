import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/login.dart';
import 'package:job_finder_app/screens/main_navigation.dart';

class Authstate extends StatelessWidget {
  const Authstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, user) {
            if (user.hasData) {
              return MainNavigation();
            } else {
              return MyApp();
            }
          }),
    );
  }
}

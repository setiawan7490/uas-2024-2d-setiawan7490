import 'package:flutter/material.dart';
import '/provider/signin_provider.dart';

class SignInController {
  final SignInProvider provider;

  SignInController(this.provider);

  void onSignIn(String email, String password, BuildContext context) {
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Email and Password are required!")),
      );
    } else if (provider.validateSignIn(email, password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Welcome back!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Invalid email or password!")),
      );
    }
  }
}

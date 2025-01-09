import 'package:flutter/material.dart';
import '/provider/signup_provider.dart';

class SignUpController {
  final SignUpProvider provider;

  SignUpController(this.provider);

  void onSignUp(String name, String email, String password, String confirmPassword, BuildContext context) {
    if (name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("All fields are required!")),
      );
    } else if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match!")),
      );
    } else {
      provider.saveSignUpData(name, email, password, confirmPassword);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign Up Successful! Please Sign In.")),
      );
      Navigator.pushReplacementNamed(context, '/signin');
    }
  }
}

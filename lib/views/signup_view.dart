import 'package:flutter/material.dart';
import '/controller/signup_controller.dart';
import '/provider/signup_provider.dart';

class SignUpView extends StatelessWidget {
  final SignUpProvider provider = SignUpProvider();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController(provider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text("Full Name"),
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Your Name"),
              ),
              SizedBox(height: 10),
              Text("Email"),
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: "yourmail@gmail.com"),
              ),
              SizedBox(height: 10),
              Text("Password"),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(hintText: "********"),
              ),
              SizedBox(height: 10),
              Text("Confirm Password"),
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(hintText: "********"),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.onSignUp(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                      confirmPasswordController.text,
                      context,
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '/controller/signin_controller.dart';
import '/provider/signup_provider.dart';
import '/provider/signin_provider.dart';

class SignInView extends StatelessWidget {
  final SignInProvider provider = SignInProvider(SignUpProvider());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = SignInController(provider);

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
                  "Sign In",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
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
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.onSignIn(
                      emailController.text,
                      passwordController.text,
                      context,
                    );
                  },
                  child: Text("Sign In"),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up Now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

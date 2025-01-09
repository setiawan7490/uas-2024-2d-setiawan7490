import 'package:flutter/material.dart';
import '../controller/signin_controller.dart';

class SignInView extends StatelessWidget {
  final SignInController controller = SignInController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                Center(
                  child: Text(
                    "Please enter your email and password to sign in.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Text("Enter Email"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "yourmail@gmail.com",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                Text("Password"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "************",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        // Menambahkan aksi ketika ikon mata diklik
                      },
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: controller.onSignIn,
                    child: Text("Sign In"),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text("or sign in with"),
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          "assets/img/gg.png",
                          width: 40,
                          height: 40,
                        ),
                        onPressed: () {
                          // Aksi login sosial Google
                        },
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Image.asset(
                          "assets/img/fb.png",
                          width: 40,
                          height: 40,
                        ),
                        onPressed: () {
                          // Aksi login sosial Facebook
                        },
                      ),
                    ],
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
          // Aksi untuk menuju ke halaman Sign Up
        },
        child: Text(
          "Sign Up Now",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
),
SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

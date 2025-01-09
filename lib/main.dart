import 'package:flutter/material.dart';
import 'views/guest_view.dart';
import 'views/signin_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Halaman awal
      routes: {
        '/': (context) => GuestView(),     // Rute untuk halaman GuestView
        '/signin': (context) => SignInView(), // Rute untuk halaman SignUpView
      },
    );
  }
}

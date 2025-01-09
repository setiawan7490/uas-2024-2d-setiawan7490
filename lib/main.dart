import 'package:flutter/material.dart';
import 'views/profile_view.dart';
import 'views/home_view.dart';
import 'views/message_view.dart';
import 'views/guest_view.dart';
import 'views/signup_view.dart';
import 'views/signin_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GuestView(),
        '/signup': (context) => SignUpView(),
        '/signin': (context) => SignInView(),
        '/home': (context) => HomeView(),
        '/message': (context) => MessageView(),
        '/profile': (context) => ProfileView(),
      },
    );
  }
}

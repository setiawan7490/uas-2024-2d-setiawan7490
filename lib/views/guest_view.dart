import 'package:flutter/material.dart';
import '../controller/guest_controller.dart';

class GuestView extends StatelessWidget {
  final GuestController controller = GuestController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/img/01.gif', // Ganti dengan path gambar kamu
                    fit: BoxFit.cover, // Atur gambar agar mengisi kotak
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Welcome to my app", // Judul dengan teks tebal
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold, // Membuat teks tebal
                  color: Colors.black, // Warna teks
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ElevatedButton(
  onPressed: () {
    // Pertama, jalankan onSignUp dari controller
    controller.onSignUp();
    // Kemudian, navigasi ke halaman signup
    Navigator.pushNamed(context, '/signin');
  },
  child: Text("Sign In"),
)

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

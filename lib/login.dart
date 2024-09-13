import 'package:flutter/material.dart';
import 'template.dart'; // Menghubungkan dengan file template

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna latar belakang putih
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 350, // Lebar kotak form
          constraints: BoxConstraints(
            maxHeight: 500, // Batas tinggi maksimum kotak form
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // perubahan posisi shadow
              ),
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Mengatur ukuran kolom agar tidak memenuhi layar
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Teks Login di atas form
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent, // Warna biru untuk teks
                ),
              ),
              SizedBox(height: 16), // Mengurangi jarak antara teks login dan ikon
              // Input Username
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  filled: true,
                  fillColor: Colors.grey[200], // Warna isi input abu-abu muda
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 12), // Mengurangi jarak antara input username dan password
              // Input Password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  filled: true,
                  fillColor: Colors.grey[200], // Warna isi input abu-abu muda
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16), // Mengurangi jarak antara input password dan tautan
              // Tautan Forgot Password dan Register
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Tambahkan aksi untuk forgot password di sini
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Tambahkan aksi untuk register di sini
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16), // Mengurangi jarak antara tautan dan tombol login
              // Tombol Login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: Colors.blueAccent, // Warna biru tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Template()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

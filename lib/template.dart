import 'package:flutter/material.dart';
import 'home.dart'; // Menghubungkan dengan file home
import 'info.dart';
import 'profile.dart';
import 'news.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeTab(), // Menampilkan halaman Home
    InformationScreen(), // Menampilkan halaman Info
    NewsScreen(), // Menampilkan halaman News
    ProfileScreen(), // Menampilkan halaman Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,
              color: Colors.white), // Warna tombol hamburger putih
          onPressed: () {
            // Aksi ketika tombol hamburger ditekan
          },
        ),
        title: Text(
          'Student App',
          style: TextStyle(
            fontSize: 24, // Ukuran teks
            fontWeight: FontWeight.bold, // Teks tebal
            color: Colors.white, // Warna teks putih
          ),
        ),
        centerTitle: true, // Memusatkan teks di AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.notifications,
                color: Colors.white), // Warna ikon notifikasi putih
            onPressed: () {
              // Aksi ketika ikon notifikasi ditekan
            },
          ),
        ],
        backgroundColor: Colors.blueAccent, // Warna background AppBar
        elevation: 4.0, // Shadow bawah AppBar
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

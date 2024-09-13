import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Stack untuk bagian atas (background hitam + konten profil)
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                // Background hitam di bagian atas
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.black87],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),

                // Kotak putih yang berisi profil dan menu, sedikit masuk ke background hitam
                Positioned(
                  top: 100, // Agar kotak masuk ke dalam area background hitam
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width *
                          0.9, // Sesuaikan dengan lebar layar
                      padding: EdgeInsets.only(top: 70, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  20), // Mengurangi jarak antara foto profil dan nama
                          Text(
                            'Renjie Syarbaini Prasetya',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'renjieprass@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20),

                          // List menu
                          ListTile(
                            leading: Icon(Icons.person, color: Colors.black87),
                            title: Text('Profile Details'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // Aksi ketika "Profile Details" ditekan
                            },
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading: Icon(Icons.grade, color: Colors.black87),
                            title: Text('Grades'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // Aksi ketika "Grades" ditekan
                            },
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading:
                                Icon(Icons.assignment, color: Colors.black87),
                            title: Text('Assignments'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // Aksi ketika "Assignments" ditekan
                            },
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading:
                                Icon(Icons.schedule, color: Colors.black87),
                            title: Text('Schedule'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // Aksi ketika "Schedule" ditekan
                            },
                          ),
                          Divider(height: 1),
                          ListTile(
                            leading: Icon(Icons.message, color: Colors.black87),
                            title: Text('Messages'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // Aksi ketika "Messages" ditekan
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Foto Profil (lebih besar dari sebelumnya)
                Positioned(
                  top: 50, // Posisi untuk membuat gambar profil melampaui kotak
                  child: CircleAvatar(
                    radius: 60, // Membuat foto profil lebih besar
                    backgroundImage: AssetImage('assets/profile_picture.png'),
                  ),
                ),
              ],
            ),

            SizedBox(height: 100), // Jarak antar elemen setelah kotak profil

            // Tombol Save di bagian bawah
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: ProfileScreen(),
    ));

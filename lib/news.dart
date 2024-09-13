import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'title': 'Pendaftaran Kelas Semester Baru Dibuka',
      'date': '2024-09-10',
      'description':
          'Pendaftaran untuk kelas semester baru sudah dibuka. Segera lakukan pendaftaran melalui portal akademik.'
    },
    {
      'title': 'Workshop Pengembangan Karir di Kampus',
      'date': '2024-09-08',
      'description':
          'Ikuti workshop pengembangan karir yang akan diadakan di kampus pada tanggal 15 September 2024. Daftarkan diri Anda segera!'
    },
    {
      'title': 'Kegiatan Olahraga Mingguan',
      'date': '2024-09-05',
      'description':
          'Jangan lewatkan kegiatan olahraga mingguan yang diadakan di lapangan kampus setiap hari Jumat. Ayo bergabung!'
    },
    {
      'title': 'Pengumuman Hasil Ujian Tengah Semester',
      'date': '2024-09-01',
      'description':
          'Hasil ujian tengah semester telah diumumkan. Cek nilai Anda melalui portal akademik.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Hero Section for Latest News
          Container(
            color: Color.fromARGB(255, 53, 53, 53),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                // Assuming the latest news is the first item in the list
                if (newsItems.isNotEmpty) ...[
                  Text(
                    newsItems[0]['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    newsItems[0]['date']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    newsItems[0]['description']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: newsItems.length,
              itemBuilder: (context, index) {
                final item = newsItems[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item['date']!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: Text(
                            item['description']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

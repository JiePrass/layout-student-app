import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  final List<Map<String, String>> informationItems = [
    {
      'title': 'Tugas Pengantar Ilmu Komputer',
      'date': '2024-09-12',
      'description':
          'Kumpulkan tugas ini sebelum tanggal 12 September 2024. Pastikan untuk mengikuti format yang telah ditentukan.'
    },
    {
      'title': 'Proyek Akhir Matematika',
      'date': '2024-09-15',
      'description':
          'Proyek akhir harus diserahkan melalui portal akademik. Perhatikan petunjuk detail yang diberikan di kelas.'
    },
    {
      'title': 'Pendaftaran Kegiatan Ekstrakurikuler',
      'date': '2024-09-09',
      'description':
          'Pendaftaran untuk kegiatan ekstrakurikuler semester ini akan ditutup pada tanggal 20 September 2024. Daftarkan diri Anda sekarang!'
    },
    {
      'title': 'Perubahan Jadwal Ujian',
      'date': '2024-09-08',
      'description':
          'Jadwal ujian telah diperbarui. Periksa jadwal terbaru di portal akademik untuk menghindari kebingungan.'
    },
    {
      'title': 'Workshop Pengembangan Karir di Kampus',
      'date': '2024-08-15',
      'description':
          'Ikuti workshop pengembangan karir yang akan diadakan di kampus pada tanggal 15 September 2024. Daftarkan diri Anda segera!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Group information by time periods
    final today = DateTime.now();
    final oneWeekAgo = today.subtract(Duration(days: 7));
    final oneMonthAgo = today.subtract(Duration(days: 30));

    final todayItems = informationItems.where((item) {
      final date = DateTime.parse(item['date']!);
      return date.isAfter(today.subtract(Duration(days: 1))) &&
          date.isBefore(today.add(Duration(days: 1)));
    }).toList();

    final weekAgoItems = informationItems.where((item) {
      final date = DateTime.parse(item['date']!);
      return date.isAfter(oneWeekAgo) && date.isBefore(today);
    }).toList();

    final monthAgoItems = informationItems.where((item) {
      final date = DateTime.parse(item['date']!);
      return date.isBefore(oneWeekAgo) && date.isAfter(oneMonthAgo);
    }).toList();

    return Scaffold(
      body: ListView(
        children: [
          if (todayItems.isNotEmpty) _buildSection('Today', todayItems),
          if (weekAgoItems.isNotEmpty)
            _buildSection('A Week Ago', weekAgoItems),
          if (monthAgoItems.isNotEmpty)
            _buildSection('A Month Ago', monthAgoItems),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Map<String, String>> items) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          for (var item in items)
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      item['date']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item['description']!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

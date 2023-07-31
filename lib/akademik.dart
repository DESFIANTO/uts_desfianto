import 'package:flutter/material.dart';

class Akademik extends StatelessWidget {
  Akademik({Key? key}) : super(key: key);

  final List<Map<String, String>> fakultasList = [
    {
      'nama': 'Fakultas Teknik',
      'jurusan': 'Teknik Informatika, Teknik Elektro, Teknik Sipil'
    },
    {
      'nama': 'Fakultas Ekonomi',
      'jurusan': 'Manajemen, Akuntansi, Ekonomi Pembangunan'
    },
    {
      'nama': 'Fakultas Kedokteran',
      'jurusan': 'Kedokteran Umum, Kedokteran Gigi, Farmasi'
    },
    // Tambahkan informasi fakultas dan jurusan lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akademik"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: ListView.builder(
        itemCount: fakultasList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  fakultasList[index]['nama']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  fakultasList[index]['jurusan']!,
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Navigasi ke halaman detail fakultas ketika item dipilih
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailFakultas(fakultas: fakultasList[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailFakultas extends StatelessWidget {
  final Map<String, String> fakultas;

  DetailFakultas({required this.fakultas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Fakultas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Fakultas: ${fakultas['nama']}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Jurusan: ${fakultas['jurusan']}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Akademik(),
  ));
}

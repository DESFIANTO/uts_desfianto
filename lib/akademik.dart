import 'package:flutter/material.dart';


class Akademik extends StatelessWidget {
  const Akademik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akademik"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: ListView.builder(
        itemCount: mahasiswaList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(mahasiswaList[index].nama),
              subtitle: Text(mahasiswaList[index].jurusan),
            ),
          );
        },
      ),
    );
  }
}

class AkademikScreen extends StatelessWidget {
  final List<Mahasiswa> mahasiswaList = [
    Mahasiswa(nama: 'John Doe', jurusan: 'Informatika'),
    Mahasiswa(nama: 'Jane Smith', jurusan: 'Sistem Informasi'),
    Mahasiswa(nama: 'Michael Johnson', jurusan: 'Teknik Elektro'),
    Mahasiswa(nama: 'Lisa Brown', jurusan: 'Akuntansi'),
  ];
}

class Mahasiswa {
  final String nama;
  final String jurusan;

  Mahasiswa({required this.nama, required this.jurusan});
}

import 'package:flutter/material.dart';

class Perpustakaan extends StatelessWidget {
  Perpustakaan({Key? key}) : super(key: key);

  // Buat daftar buku sederhana untuk ditampilkan dalam aplikasi
  final List<Map<String, String>> books = [
    {'title': 'Instalasi dan Konfigurasi  Linux ', 'author': 'Nugroho Bunafit'},
    {'title': 'DATABASE RELASIONAL DENGAN MySQL', 'author': 'ANDI'},
    {'title': 'Databse relasional dengan MySQL', 'author': 'NUGROHO, Bunafit'},
    // Tambahkan judul buku dan pengarang lebih banyak di sini jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perpustakaan"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(
                  books[index]['title']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Pengarang: ${books[index]['author']}',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Navigasi ke halaman BookDetailScreen ketika buku dipilih
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(book: books[index]),
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

class BookDetailScreen extends StatelessWidget {
  final Map<String, String> book;

  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Judul: ${book['title']}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Pengarang: ${book['author']}',
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
    home: Perpustakaan(),
  ));
}

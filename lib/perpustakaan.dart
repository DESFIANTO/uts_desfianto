import 'package:flutter/material.dart';

class Perpustakaan extends StatelessWidget {
  Perpustakaan({Key? key}) : super(key: key);

  // Buat daftar buku sederhana untuk ditampilkan dalam aplikasi
  final List<Map<String, String>> books = [
    {'title': 'Judul Buku 1', 'author': 'Pengarang Buku 1'},
    {'title': 'Judul Buku 2', 'author': 'Pengarang Buku 2'},
    {'title': 'Judul Buku 3', 'author': 'Pengarang Buku 3'},
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
          return ListTile(
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              // Navigasi ke halaman BookDetailScreen ketika buku dipilih
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: books[index]),
                ),
              );
            },
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

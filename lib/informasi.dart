import 'package:flutter/material.dart';

// Nama   : Desfianto
// Nim    : 1102200028
// Matkul : Aplikasi Bergerak

// Stateless Widget adalah jenis widget yang tidak menyimpan atau mempertahankan status (state) internal di dalamnya. 

class Informasi extends StatelessWidget {
  const Informasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informasi"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("ini adalah Informasi"),
          ],
        ),
      ),
    );
  }
}

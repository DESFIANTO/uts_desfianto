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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("ini adalah Akademikk"),
          ],
        ),
      ),
    );
  }
}

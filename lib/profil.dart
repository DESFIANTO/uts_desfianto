import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  final String name = "Desfianto";
  final String email = "fiandesfianto@gmail.com";
  final String address = "Lintas Selatan";
  final String phoneNumber = "123-456-7890";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://static.republika.co.id/uploads/images/inpicture_slide/018580600-1653098543-628729271f854-kartun-doraemon.jpg"),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              email,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              address,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              phoneNumber,
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
    home: Profil(),
  ));
}

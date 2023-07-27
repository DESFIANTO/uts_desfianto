import 'package:flutter/material.dart';

class Informasi extends StatelessWidget {
  const Informasi({Key? key});

  // Add the URL of ITTS website
  final String ittsWebsite = 'https://www.itts.ac.id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informasi"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Selamat Datang di Informasi Institut Teknologi Telkom Surabaya!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Institut Teknologi Telkom Surabaya (ITTS) adalah perguruan tinggi "
                "swasta di Surabaya, Jawa Timur, Indonesia. ITTS menyediakan berbagai "
                "program studi di bidang teknologi dan komunikasi, termasuk Teknik "
                "Informatika, Teknik Elektro, Sistem Informasi, dan lainnya. "
                "ITTS berkomitmen untuk menyediakan pendidikan berkualitas dan "
                "mendukung pengembangan teknologi di Indonesia.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Jika Anda tertarik untuk menjadi bagian dari ITTS, silakan kunjungi "
                "situs web resmi untuk informasi lebih lanjut dan proses pendaftaran.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Open the ITTS website in a web browser
                  launchURL("https://ittelkom-sby.ac.id/");
                },
                child: Text("Kunjungi Situs Web ITTS"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to open a URL in the default web browser
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launch(String url) {}
}

canLaunch(String url) {}

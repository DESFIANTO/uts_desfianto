import 'package:flutter/material.dart';

class Elearning extends StatelessWidget {
  const Elearning({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Learning"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Selamat Datang di E-Learning!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Di sini Anda dapat mengakses materi kuliah secara online dan "
              "mengumpulkan tugas kuliah secara elektronik. "
              "Silakan pilih mata kuliah yang Anda ikuti di bawah ini:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Add list of available courses here
            ListTile(
              title: Text(
                'Mata Kuliah 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Tempat Pengumpulan Tugas: Link Tugas Mata Kuliah 1',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CourseContentPage(course: 'Mata Kuliah 1'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Mata Kuliah 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Tempat Pengumpulan Tugas: Link Tugas Mata Kuliah 2',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CourseContentPage(course: 'Mata Kuliah 2'),
                  ),
                );
              },
            ),
            // Add more courses here if needed
          ],
        ),
      ),
    );
  }
}

class CourseContentPage extends StatelessWidget {
  final String course;

  CourseContentPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi $course'),
      ),
      body: Center(
        child: Text('Ini adalah halaman untuk materi $course'),
      ),
    );
  }
}

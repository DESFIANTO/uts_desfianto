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
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Selamat Datang di E-Learning!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Di sini Anda dapat mengakses materi kuliah secara online dan "
                "mengumpulkan tugas kuliah secara elektronik. "
                "Silakan pilih mata kuliah yang Anda ikuti di bawah ini:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _buildCourseTile(context, 'Mata Kuliah 1',
                        'Tempat Pengumpulan Tugas: Link Tugas Mata Kuliah 1'),
                    _buildCourseTile(context, 'Mata Kuliah 2',
                        'Tempat Pengumpulan Tugas: Link Tugas Mata Kuliah 2'),
                    // Add more courses here if needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCourseTile(
      BuildContext context, String course, String description) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          course,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseContentPage(course: course),
            ),
          );
        },
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

void main() {
  runApp(MaterialApp(
    home: Elearning(),
  ));
}

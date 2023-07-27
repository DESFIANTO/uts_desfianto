import 'package:flutter/material.dart';

class Dosen extends StatelessWidget {
  Dosen({Key? key});

  // List of professors and the courses they teach
  final List<Map<String, String>> professors = [
    {'name': 'Dr. John Doe', 'course': 'Computer Science'},
    {'name': 'Prof. Jane Smith', 'course': 'Data Science'},
    {'name': 'Dr. Michael Johnson', 'course': 'Artificial Intelligence'},
    // Add more professors and courses here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dosen"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: ListView.builder(
        itemCount: professors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(
                professors[index]['name']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Mata Kuliah: ${professors[index]['course']}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}

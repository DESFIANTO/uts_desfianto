import 'package:flutter/material.dart';

class Dosen extends StatelessWidget {
  Dosen({Key? key});

  // List of professors and the courses they teach
  final List<Map<String, String>> professors = [
    {'name': 'Billy Montolalu, S.Kom., M.Kom.', 'course': 'Aplikasi Bergerak'},
    {'name': 'Nanda Iryani, S.T., M.T.', 'course': 'IMK'},
    {
      'name': 'Ardiansyah Al Farouq, S.ST., M.T.',
      'course': 'Artificial Intelligence'
    },
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
            child: Card(
              elevation: 4, // Add elevation to create a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // Rounded corners for the card
              ),
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
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Perkuliahan extends StatelessWidget {
  Perkuliahan({Key? key}) : super(key: key);

  final List<Map<String, String>> schedule = [
    {
      'day': 'Senin',
      'time': '08.00 - 10.00',
      'course': 'Metodologi Penelitian'
    },
    {'day': 'Selasa', 'time': '10.30 - 12.30', 'course': 'IMK'},
    {
      'day': 'Rabu',
      'time': '13.00 - 15.00',
      'course': 'Artificial Intelligence'
    },
    // Tambahkan jadwal perkuliahan lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkuliahan"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: ListView.builder(
        itemCount: schedule.length,
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
                  '${schedule[index]['course']} - ${schedule[index]['time']}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  schedule[index]['day']!,
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

void main() {
  runApp(MaterialApp(
    home: Perkuliahan(),
  ));
}

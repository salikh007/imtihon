import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  final List<Map<String, String>> people = List.generate(
    10,
    (index) => {
      'name': 'Person ${index + 1}',
      'position': 'Position ${index + 1}',
      'image': 'rasm/images.png', 
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: const Color.fromARGB(255, 132, 123, 123),
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 132, 123, 123),
          title: Center(child: Text('Meet The Team',style: TextStyle(color: Color.fromARGB(255, 17, 50, 78)),)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2, 
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: people.length,
            itemBuilder: (context, index) {
              final person = people[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(person['image']!),
                      ),
                      SizedBox(height: 10),
                      Text(
                        person['name']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        person['position']!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook, color: Colors.grey[600]),
                          SizedBox(width: 10),
                          Icon(Icons. search, color: Colors.grey[600]),
                          SizedBox(width: 10),
                          Icon(Icons.telegram, color: Colors.grey[600]),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
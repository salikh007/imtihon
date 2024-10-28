import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlantScreen(),
      debugShowCheckedModeBanner: false, // Reklamani o'chirib qo'yish
    );
  }
}

class PlantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
             
              Column(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    size: 50,
                  ), 
                  Icon(
                    Icons.home,
                    color: Colors.teal,
                    size: 70,
                  ), 
                  SizedBox(height: 20), 
                  Icon(Icons.shop,
                      color: Colors.teal, size: 70), 
                  SizedBox(height: 20),
                  Icon(Icons.people,
                      color: Colors.teal, size: 70), 
                  SizedBox(height: 20),
                  Icon(Icons.search,
                      color: Colors.teal, size: 70), 
                ],
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                    width: 410, 
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(70)),
                      image: DecorationImage(image: AssetImage("rasm/q.webp"),fit: BoxFit.cover)
                    ),
                    ),
              ),
            ],
          ),
          SizedBox(height: 20),
              Text(
                'Angelica', 
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
              Text(
                'Germany',
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.grey, 
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 330),
                child: Text(
                  '\$85',
                  style: TextStyle(
                    fontSize: 40, 
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Add to Cart'),
                ),
              ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Text',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 10),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Icon(Icons.search, color: Colors.white),
                          Icon(Icons.settings, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/car.jpg"),fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 380,height: 100, color: const Color.fromARGB(255, 32, 26, 10), child: Column(
                        children: [
                          Text('Ismi: Oybek',style: TextStyle(color: Colors.white,fontSize: 20),),
                          Text('Tel: 90-333-89-98',style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text('Manzil: Kokand',style: TextStyle(color: Colors.white,fontSize: 20),),
                      
                        ],
                      )),
                      
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
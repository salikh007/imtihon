import 'package:flutter/material.dart';

void main() {
  runApp(Birinchi());
}

class Birinchi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: TasbehHomePage(),
    );
  }
}

class TasbehHomePage extends StatefulWidget {
  @override
  _TasbehHomePageState createState() => _TasbehHomePageState();
}

class _TasbehHomePageState extends State<TasbehHomePage> {
  int _counter = 0;

  void _bosish() {
    setState(() {
      _counter++;
    });
  }

  void _qaytarish() {
    setState(() {
      _counter --;
    });
  }

  void _tozalash() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _bosish,
                child: Text(
                  'bosish',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _qaytarish,
                child: Text(
                  'qaytarish',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _tozalash,
                child: Text(
                  'tozalash',
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage("rasm/mosquhd.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: AgeChecker(),
    );
  }
}

class AgeChecker extends StatefulWidget {
  @override
  _AgeCheckerState createState() => _AgeCheckerState();
}

class _AgeCheckerState extends State<AgeChecker> {
  final TextEditingController _controller = TextEditingController();
  String _message = "";

  void _checkAge() {
    setState(() {
      int? age = int.tryParse(_controller.text);
      if (age == null) {
        _message = "Iltimos, faqat raqam kiriting.";
      } else if (age < 18) {
        _message = "Sizga mumkin emas.";
      } else {
        _message = "Sizga mumkin!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 227, 223, 185),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Yoshingizni kiriting',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              _message,
              style: TextStyle(color: const Color.fromARGB(255, 255, 17, 0), fontSize: 16),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: _checkAge,
              child: Icon(Icons.check),
            ),
          ],
        ),
      ),
    );
  }
}
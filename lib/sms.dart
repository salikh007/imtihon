import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SmsScreen(),
    );
  }
}

class SmsScreen extends StatefulWidget {
  @override
  _SmsScreenState createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  List<String> messages = [];
  final List<String> predefinedMessages = [
    'Assalomu alaykum',
    'Vaalaykum assalom',
    'Ahvoling qalay?',
    'Nima gaplar?',
    'Tinchlik',
    'Ozingda nima gap?',
    'Yahshi',
    'Bupti',
    'Bupti',
    'Bupti',
  ];
  int messageCount = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (messageCount < predefinedMessages.length) {
        setState(() {
          messages.add(predefinedMessages[messageCount]);
          messageCount++;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return Align(
            alignment: index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.blue[100] : Colors.green[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                messages[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}

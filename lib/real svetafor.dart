import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(SvetoforApp());
}

class SvetoforApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Svetofor(),
        ),
      ),
    );
  }
}

class Svetofor extends StatefulWidget {
  @override
  _SvetoforState createState() => _SvetoforState();
}

class _SvetoforState extends State<Svetofor> {
  Color qizilRang = Colors.grey;
  Color sariqRang = Colors.grey;
  Color yashilRang = Colors.grey;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % 10;
        if (currentIndex < 4) {
          qizilRang = Colors.red;
          sariqRang = Colors.grey;
          yashilRang = Colors.grey;
        } else if (currentIndex >= 4 && currentIndex < 6) {
          qizilRang = Colors.grey;
          sariqRang = Colors.yellow;
          yashilRang = Colors.grey;
        } else {
          qizilRang = Colors.grey;
          sariqRang = Colors.grey;
          yashilRang = Colors.green;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey.shade900, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLight(qizilRang),
          SizedBox(height: 20),
          _buildLight(sariqRang),
          SizedBox(height: 20),
          _buildLight(yashilRang),
        ],
      ),
    );
  }

  Widget _buildLight(Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 5,
        ),
      ),
    );
  }
}
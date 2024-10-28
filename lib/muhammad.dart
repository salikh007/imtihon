import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Svetafor",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "Svetafor",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            child: Center(
                child: Text(
              "red",
              style: TextStyle(fontSize: 40),
            )),
            width: 200,
            height: 100,
            color: Colors.red,
          ),
          Container(
            child: Center(
                child: Text(
              "yellow",
              style: TextStyle(fontSize: 40),
            )),
            width: 200,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            child: Center(
                child: Text(
              "green",
              style: TextStyle(fontSize: 40),
            )),
            width: 200,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 300,
            color: Colors.black,
          )
        ],
      )),
    ),
  ));
}

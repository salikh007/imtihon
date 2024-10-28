import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "car info",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.black,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 150,
              backgroundImage: AssetImage("rasm/audi.jpg"),
            ),
          ),
          Text(
            "Marka  :",
            style: TextStyle(color: Colors.white,fontSize: 30),
          ),
          Text(
            "Audi",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Model  :",
            style: TextStyle(color: Colors.white,fontSize: 30),
          ),
          Text(
            "M  8",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Ishlab chiqarilgan yili  :",
            style: TextStyle(color: Colors.white,fontSize: 30),
          ),
          Text(
            "2006-xozirgacha",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ),
  ));
}

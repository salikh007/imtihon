import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Assasin creed",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(child: Text("data",style: TextStyle(fontSize: 20),),
              width: 50,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage("rasm/temur.jpg"),fit: BoxFit.cover)
        ),
        child: Center(
          child: Stack(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: CircleAvatar(backgroundColor: Colors.blue,radius: 155,
                      child: Center(
                        child: CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage("rasm/daraxt.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(left: 200, child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 50, 
                    child: Icon(Icons.home),
                  ))
                ],
              ),
            ],
          ),
        ),
      )
    ),
  ));
}

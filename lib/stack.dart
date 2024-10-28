import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("imtihon",style: TextStyle(fontSize: 50),)),
        actions: [Icon(Icons.home,size: 50,)],
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Positioned(left: 100,right: 200,
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data"),
                  Icon(Icons.messenger)
                ],
              ),
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          Positioned(left: 150,top: 100,right: 150,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          Positioned(left: 100,top: 220,right: 200,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          Positioned(left: 150,top: 320,right: 150,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          Positioned(left: 100,top: 440,right: 200,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          )
        ],
      ),
    ),
  ));
}

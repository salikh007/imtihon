import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("FLUTTER",style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 34, 55),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 24, 3, 100),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 84, 2, 6),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 150, 130, 105),
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 105, 155, 154),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 149, 115, 139),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(255, 133, 5, 230),
              )],
            )
          ],
        ),
        
      ),
    )
  );
}
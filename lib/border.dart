import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "decoration",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 41, 70, 42),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 92, 33),
                    border: Border.all(width: 5,color: Colors.blue),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100),topRight: Radius.circular(100))),
              ),
              SizedBox(width: 5,),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 178, 198, 90),
                    border: Border.all(width: 5,color: Colors.blue),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(100),topLeft: Radius.circular(100))),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(width: 5,color: Colors.blue),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomRight: Radius.circular(100))
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 5,color: Colors.blue),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomLeft: Radius.circular(100)),
                  ),
              )
            ],
          )
        ],
      ),
    ),
  ));
}

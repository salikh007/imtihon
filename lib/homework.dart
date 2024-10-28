import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Vertical card pager",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              child: Center(
                  child: Text(
                "RED",
                style: TextStyle(fontSize: 30,color: Colors.white),
              )),
              width: 300,
              height: 50,
              color: Colors.red,
            ),
          ),
         Container(
          child: Center(child: Text("yellow",style: TextStyle(fontSize: 35,color: Colors.white),)),
          width: 350,
          height: 60,
          color: Colors.yellow,
         ),
         Container(
          child: Center(child: Text("CYAN",style: TextStyle(fontSize: 50,color: Colors.white),)),
          width: 400,
          height: 400,
          color: const Color.fromARGB(255, 0, 50, 92),
         ),
         Container(
          child: Center(child: Text("BLUE",style: TextStyle(fontSize: 30,color: Colors.white),)),
          width: 350,
          height: 60,
          color: Color.fromARGB(255, 51, 119, 176),
         ),
         Container(
          child: Center(child: Text("GREY",style: TextStyle(fontSize: 30,color: Colors.white),)),
           width: 300,
           height: 50,
           color: Colors.grey,
         )],
      ),
    ),
  ));
}

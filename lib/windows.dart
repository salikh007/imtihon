import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("ROW",style: TextStyle(color: Color.fromARGB(255, 23, 14, 44)
            ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 85, 73, 73),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              )],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              )],
            )
          ],
        ),
      ),
    )
  );
}
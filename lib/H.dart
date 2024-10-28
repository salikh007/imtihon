import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MUSTAQIL ISH",style: TextStyle(color:Colors.white),)),
          backgroundColor: const Color.fromARGB(255, 43, 57, 68),
        ),
        backgroundColor: const Color.fromARGB(255, 172, 167, 116),
        body: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                )],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                )
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}
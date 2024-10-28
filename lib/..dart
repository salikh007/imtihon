import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            ),
            Row(
              children: [
                Container(
                  width: 510,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 525,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.grey,
            ),
            Row(
              children: [
                Container(
                  width: 620,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: 420,
                  height: 100,
                  color: Colors.black,
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}
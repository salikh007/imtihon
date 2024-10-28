import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),topLeft: Radius.circular(200),topRight: Radius.circular(200))
                  ),
                ),
                Container(
                   width: 200,
                   height: 200,
                   decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),topLeft: Radius.circular(200),topRight: Radius.circular(200))
                   ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200),topLeft: Radius.circular(200))
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(200),bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200))
                  ),
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}
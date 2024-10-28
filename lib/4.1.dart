import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: 750,
              height: 500,
              child: Image.asset("rasm/nexia.jpg",fit: BoxFit.cover,),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 229,
                  child: Image.asset("rasm/sabzi.jpg",fit: BoxFit.cover,),
                ),
                Container(
                  width: 250,
                  height: 229,
                  child: Image.asset("rasm/food.jpg",fit: BoxFit.cover,),
                ),
                Container(
                  width: 250,
                  height: 229,
                  child: Image.asset("rasm/daraxt.jpg",fit: BoxFit.cover,),
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}
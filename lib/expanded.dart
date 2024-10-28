import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                child: Text("item1",style: TextStyle(fontSize: 20),),
              ),
            ),
            Container(
              child: Text("item2",style: TextStyle(fontSize: 20),),
            ),
            Container(
              child: Text("item2",style: TextStyle(fontSize: 20),),
            ),
            Container(
              child: Text("item4",style: TextStyle(fontSize: 20),),
            ),
            Expanded(
              child: Container(
                child: Center(child: Text("EXPANDED",style: TextStyle(color: Colors.white,fontSize: 30),)),
                width: double.infinity,
                height: 500,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    )
  );
}
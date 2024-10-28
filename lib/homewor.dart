import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BATO",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red),),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
          Container(color: Colors.white,width: double.infinity,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Header 1",style: TextStyle(fontSize: 30),),
                ),Container(
              child: Text("Header 2",style: TextStyle(fontSize: 30),),
            ),
              Container(
                child: Text("Header 3",style: TextStyle(fontSize: 30),),
              ),
              Container(
                child: Text("Header 4",style: TextStyle(fontSize: 30),),
                ),
              ],
            ),
          ),
          
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                 width: double.infinity,
                 height: 150,
                 color: Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: double.infinity,
                height: 51,
                color: Colors.orange,
              )],
        ),
      ),
    )
  );
}
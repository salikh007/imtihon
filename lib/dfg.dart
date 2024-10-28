import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.piano,size: 20,),
          title: Text("icons",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            Container(
              child: Icon(Icons.desktop_windows,size: 40,color: Colors.white,),
              width: 150,
              height: 200,
              color: Color.fromARGB(255, 219, 172, 101),
            ),
            Container(
              height: 200,
              width: 470,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Container(
                  width: 470,
                  height: 100,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100,right: 270),
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )
  );
}
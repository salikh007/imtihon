import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("data",style: TextStyle(color: Colors.white),)),
          backgroundColor: Color.fromRGBO(16, 43, 17, 1),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ), 
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.black,
                  ),
                )

              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
          )
      ),
    );       
  
}
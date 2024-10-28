import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("rasm/nexia.jpg"),fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 400,
                        height: 200,
                        color: Colors.black,
                      ),
                      
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        width: 400,
                        height: 200,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70,top: 10),
                      child: Text("Flutter",style: TextStyle(color: Colors.white,fontSize: 30,),),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("rasm/sabzi.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
  );
}
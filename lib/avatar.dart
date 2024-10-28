import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Column(
        children: [
          Container(
            
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.abc,
                          size: 40,color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 200),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Easy and",style: TextStyle(color: Colors.white,fontSize: 40),),
                  Text("quick",style: TextStyle(color: Colors.white,fontSize: 40),),
                  Text("Learn",style: TextStyle(color: Colors.white,fontSize: 40),),
                  Text("Language",style: TextStyle(color: Colors.white,fontSize: 40),),
                  Text("online",style: TextStyle(color: Colors.white,fontSize: 40),),
                    ],
                  ),
                )
              ],
            ),
            
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/nexia.jpg"),fit: BoxFit.cover),
                color: Colors.purple,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(150))),
                
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              child: Center(child: Text("start",style: TextStyle(color: Colors.white,fontSize: 30),)),
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),topLeft: Radius.circular(50),topRight: Radius.circular(50))
              ),
            ),
          )
        ],
      ),

    ),
  ));
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "flutter card",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: Card(
        child: SizedBox(
          width: double.infinity,
          height: 400,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 130),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card number",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "8600 2356 1002 8879",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Abdulhamidov Muhammadsolih",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "01/01/2028",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Aloqa bank",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,),
                child: Column(
                  children: [
                    Text("UZCARD",style: TextStyle(color: Colors.white,fontSize: 50),
                    ),
                    SizedBox(height: 100,),
                    Text("CVV",style: TextStyle(fontSize: 30),
                ),
                Text("1234",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                ),
              ),
              
            ],
          ),
        ),
        color: Colors.blue,
      ),
    ),
  ));
}

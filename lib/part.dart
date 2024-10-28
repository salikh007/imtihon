import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                  width: 300,
                  height: 200,
                  color: Colors.black,
                  child: Image(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    fit: BoxFit.cover,
                  )),
              Container(width: 300,height: 200, child: Image.asset("rasm/images.jpg",fit: BoxFit.cover,)),
              Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                  child: Image.asset(
                    "rasm/car.jpg",
                    fit: BoxFit.cover,
                  ))
            ],
          ),
          Image.network("rasm/nexia.jpg")
        ],
      ),
    ),
  ));
}

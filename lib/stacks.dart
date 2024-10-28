import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: J(),
  ));
}

class J extends StatefulWidget {
  const J({super.key});

  @override
  State<J> createState() => _JState();
}

class _JState extends State<J> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                width: 250,
                height: 200,
                color: Colors.blue,
              )),
              Container(
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 59,
                        backgroundImage: AssetImage("rasm/ferrari.jpg"),
                        
                      ),Positioned( left: 70, child: Container(
                      width: 40,
                      height: 25,
                      color: Colors.white,
                    )),
                    ],
                  ),
                ),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))
            ),
          )
            ],
          ),
          Stack(
            children: [Positioned(child: Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                width: double.infinity,
                height: 300,
                color: Colors.red,
              ),
            )),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Stack(
                        children: [
                          Container(
                            child: Center(child: Text("salom",style: TextStyle(color: Colors.white,fontSize: 100),)),
                            width: 350,
                            height: 200,
                            color: Colors.black,
                          ),
                          Positioned( top: 170, left: 230,child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("rasm/car.jpg"),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:  70),
                      child: Container(
                         
                          width: 350,
                          height: 200,
                          color: Colors.black,
                        ),
                    ),
                  ],
                ),
            width: double.infinity,
            height: 530,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topRight: Radius.circular(100))
            ),
          )
            ],
          )
        ],
      ),
    );
  }
}

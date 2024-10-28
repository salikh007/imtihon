import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: darks(),
  ));
}

class darks extends StatefulWidget {
  const darks({super.key});

  @override
  State<darks> createState() => _darksState();
}

class _darksState extends State<darks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Vijay creations",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Icon(
                          Icons.kitchen,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "people",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Market",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Exports",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 150,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                width: 450,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 205, 104, 97),
                  const Color.fromARGB(255, 74, 52, 44),
                  Colors.blue
                ])),
              )
            ],
          ),
          Stack(
            children: [
             
              Container(
                width: 450,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 125, 160, 189),
                    const Color.fromARGB(255, 3, 88, 157)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Positioned(
                left: 10,
                child: CircleAvatar(
                radius: 50,
                
                )
                ),
            ],
          )
        ],
      ),
    );
  }
}

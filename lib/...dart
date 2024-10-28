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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Text(
                          "Richard Price",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "Florida, USA",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, bottom: 50),
                          child: Text(
                            ">",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                  top: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("rasm/images.png"),
                  )),
            ],
          ),
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Text(
                          "Bell Hood",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "Mumbai, india",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, bottom: 50),
                          child: Text(
                            ">",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                width: 450,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 171, 95, 51),
                    Color.fromARGB(255, 153, 125, 26)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("rasm/images.png"),
                  )),
            ],
          ),
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Text(
                          "Hendry Rose",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "Sydney, Australia",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, bottom: 50),
                          child: Text(
                            ">",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                width: 450,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 52, 129, 21),
                    Color.fromARGB(255, 44, 6, 110)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("rasm/images.png"),
                  )),
            ],
          ),
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Column(
                      children: [
                        Text(
                          "Pink Pa",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "Tokyo, Japan",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 280, bottom: 50),
                          child: Text(
                            ">",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                width: 450,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 148, 130, 10),
                    Color.fromARGB(255, 137, 76, 5)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("rasm/images.png"),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

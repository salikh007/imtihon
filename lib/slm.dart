import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: F(),
  ));
}

class F extends StatefulWidget {
  const F({super.key});

  @override
  State<F> createState() => _FState();
}

class _FState extends State<F> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search), Icon(Icons.search)],
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER",
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      width: 56,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      width: 56,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                child: Center(
                  child: Container(
                    width: 300,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                width: 490,
                height: 200,
                color: Color.fromARGB(255, 43, 8, 38),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 100,
                      color: Colors.white,
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      color: Colors.white,
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                width: 490,
                height: 200,
                color: const Color.fromARGB(255, 45, 17, 26),
              )
            ],
          ),
        ],
      ),
    );
  }
}

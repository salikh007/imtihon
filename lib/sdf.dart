import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: H(),
  ));
}

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 43, 15, 5),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 150,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 390,
                    right: 30,
                    child: Container(
                      height: 25,
                      color: const Color.fromARGB(255, 10, 29, 44),
                      child: Image.asset(
                        "rasm/car.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Container(
               child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 43, 15, 5),
                    ),
                  ],
                ),
                           ),
             ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(height: 20,),
             Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(width: 20),
             Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(width: 20),
             Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(width: 20),
             Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(width: 20),
             Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 43, 15, 5),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

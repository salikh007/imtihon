import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dark(),
    )
  );
}
class dark extends StatefulWidget {
  const dark({super.key});

  @override
  State<dark> createState() => _darkState();
}

class _darkState extends State<dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red,Colors.yellow])
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:  AssetImage("rasm/car.jpg"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 50,
                  ),
                    CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 102, 182, 22),
                    radius: 50,
                  ),
                    CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 54, 171, 244),
                    radius: 50,
                  ),
                    CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 50,
                  ),
                    CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                  ),
                    CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 50,
                  ),
                    CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                  CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                  CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                  CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                )
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.brown,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 39, 176, 64),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 191, 159, 197),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.black,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
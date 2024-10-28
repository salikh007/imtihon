import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool select = true;
  Color leftContainerColor = Colors.green;

  void inkor() {
    setState(() {
      select = !select;

      leftContainerColor =
          leftContainerColor == Colors.green ? Colors.brown : Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 155, 3, 237),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(seconds: 5),
              alignment: select ? Alignment.topCenter : Alignment.bottomRight,
              curve: Curves.bounceIn,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 241, 231, 159),
              ),
            ),
            AnimatedAlign(
              duration: Duration(seconds: 10),
              alignment: select ? Alignment.center : Alignment.topRight,
              curve: Curves.bounceIn,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 145, 130, 241),
              ),
            ),
            AnimatedAlign(
              duration: Duration(seconds: 5),
              alignment: select ? Alignment.bottomLeft : Alignment.center,
              curve: Curves.bounceIn,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 170, 253, 187),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: leftContainerColor,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(18)),
                ),
              ),
            ),
            Positioned(
              top: 600,
              left: 250,
              child: GestureDetector(
                onTap: () {
                  inkor();
                },
                child: Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 239, 128, 128),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("b e g i n"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

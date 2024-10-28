import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: asos(),
  ));
}
class asos extends StatefulWidget {
  const asos({super.key});

  @override
  State<asos> createState() => _asosState();
}

class _asosState extends State<asos> {
  @override
  Widget build(BuildContext context) {
    return PageView(children: [ert(),asdf()],);
  }
}
class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("flutter")),backgroundColor: Colors.amber,),
    );
  }
}
class ert extends StatefulWidget {
  const ert({super.key});

  @override
  State<ert> createState() => _ertState();
}

class _ertState extends State<ert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              child: Center(
                  child: Text(
                "1",
                style: TextStyle(fontSize: 100),
              )),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
            ),
          ),
          Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Container(
                width: 500,
                height: 150,
                color: Colors.purple,
              )),
          Positioned(
              top: 380,
              right: 40,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              )),
              Positioned(top: 400,left: 0,right: 0,
                child: Container(height: 200,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Icon(Icons.home,size: 30,),
                            Text("1",style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),
                      width: 200,
                      height: 100,
                      color: Colors.brown,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      color: Colors.brown,
                    )
                  ],),
                ),
              ),
              Positioned(top: 570,left: 0,right: 0,
                child: Container(
                  width: 500,
                  height: 150,
                  color: Colors.amber,
                ),
              ),
              Positioned(top: 540,left: 20, child: Container(width: 70,height: 100, child: Image(image: AssetImage("rasm/.webp"),fit: BoxFit.cover,)))
        ],
      ),
    );
  }
}

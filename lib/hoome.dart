import 'package:flutter/material.dart';
import 'package:widget_mask/widget_mask.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mush(),
  ));
}

class mush extends StatefulWidget {
  const mush({super.key});

  @override
  State<mush> createState() => _mushState();
}

class _mushState extends State<mush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 210, 169),
        title: Center(
          child: WidgetMask(
              blendMode: BlendMode.srcATop,
              childSaveLayer: true,
              mask: Container(
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.blue, Colors.black])),
              ),
              child: Text(
                "flutter",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
              )),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WidgetMask(
              blendMode: BlendMode.srcATop,
              childSaveLayer: true,
              mask: Image.asset("rasm/sa.gif"),
              child: Icon(
                Icons.home,
                size: 250,
              )),
          WidgetMask(
              blendMode: BlendMode.srcATop,
              childSaveLayer: true,
              mask: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.black,Colors.black, Colors.blue,],stops: [0.3,0.3,0.6,0.10],begin: Alignment.topLeft,end: Alignment.bottomRight)),
              ),
              child: Icon(
                Icons.home,
                size: 250,
              ))
        ],
      ),
    );
  }
}

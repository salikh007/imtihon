import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: asdgh(),
  ));
}

class asdgh extends StatefulWidget {
  const asdgh({super.key});

  @override
  State<asdgh> createState() => _asdghState();
}

class _asdghState extends State<asdgh> {
  List nom = [
    "salom",
    "hayr",
    "hamma",
    "gridview",
    "fds",
    "terak",
    "meva",
    "uzm",
    "fazo",
    "yurak",
    "salom",
    "hayr",
    "hamma",
    "gridview",
    "fds",
    "terak",
    "meva",
    "uzm",
    "fazo",
    "yurak"
  ];
  List nom09 = ["1", "2", "3", "4", "5", "6"];
  List nom10 = [
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg",
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg"
  ];
  List nom0 = [
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg",
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg"
  ];
  List nom009 = [
    "salom",
    "hayr",
    "hamma",
    "gridview",
    "fds",
    "terak",
    "meva",
    "uzm",
    "fazo",
    "yurak",
    "salom",
    "hayr",
    "hamma",
    "gridview",
    "fds",
    "terak",
    "meva",
    "uzm",
    "fazo",
    "yurak"
  ];

  Widget tamplate(nom2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Center(child: Text(nom2)),
      ),
    );
  }

  Widget tamplete(nom44) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 100,
        child: Image.asset(
          nom44,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget templete(nom43) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 50,
        child: Text(nom43),
        color: Colors.yellow,
      ),
    );
  }

  Widget templetee(nom42) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 50,
        child: Image.asset(
          nom42,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget templeteee(nom41) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 50,
        child: Text(nom41),
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("rasm/sabzi.jpg"),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: nom.map((e) => tamplate(e)).toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: nom09.map((e) => templete(e)).toList()),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: nom10.map((e) => templetee(e)).toList()),
            ),
            Expanded(
              child: Container(
                height: 500,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: nom0.map((e) => tamplete(e)).toList(),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: nom009.map((e) => templeteee(e)).toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

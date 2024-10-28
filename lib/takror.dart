import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: oy(),
  ));
}

class oy extends StatefulWidget {
  const oy({super.key});

  @override
  State<oy> createState() => _oyState();
}

class _oyState extends State<oy> {
  List nom = [
    odiy(
      ism: "Muhammadsolih",
      tel: "908970777",
    ),
    odiy(
      ism: "fazlulloh",
      tel: "918970777",
    ),
    odiy(
      ism: "umar",
      tel: "928970777",
    ),
    odiy(
      ism: "ibrohim",
      tel: "938970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "948970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "958970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "968970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "978970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "988970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "998970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "909970777",
    ),
    odiy(
      ism: "Muhammadsolih",
      tel: "908970777",
    ),
  ];
  Widget w(ret) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        width: 500,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color.fromARGB(255, 58, 47, 104),
          border: Border.all(color: Colors.yellow, width: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ret.ism,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(ret.tel, style: TextStyle(color: Colors.white, fontSize: 30)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListWheelScrollView(
            itemExtent: 200,
            diameterRatio: 5,
            children: nom.map((e) => w(e)).toList()));
  }
}

class odiy {
  String? ism;
  String? tel;

  odiy({
    this.ism,
    this.tel,
  });
}

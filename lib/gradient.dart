import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: atirgul(),
  ));
}

class atirgul extends StatefulWidget {
  const atirgul({super.key});

  @override
  State<atirgul> createState() => _atirgulState();
}

class _atirgulState extends State<atirgul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellow, Colors.red])),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("rasm/car.jpg"),
              ),
              SizedBox(width: 30,),
              Container(
                child: Center(child: Text("ENG",style: TextStyle(color: Colors.white),)),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("rasm/bmw.webp"),
              ),
              SizedBox(width: 30,),
              Container(
                child: Center(child: Text("rus",style: TextStyle(color: Colors.white),)),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("rasm/audi.jpg"),
              ),
              SizedBox(width: 30
              ,),
              Container(
                child: Center(child: Text("uzb",style: TextStyle(color: Colors.white),)),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: c(),
  ));
}

class c extends StatefulWidget {
  const c({super.key});

  @override
  State<c> createState() => _cState();
}

class _cState extends State<c> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(child: Text("rasm",style: TextStyle(color: Colors.white,fontSize: 50),)),
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("rasm/car.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
                  ),
        ),
      ),
    );
  }
}

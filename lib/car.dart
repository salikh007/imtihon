import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List nom = [
   oddiy(
      ism: "car",
      chiq: "2020 yil",
    ),
  ];
 
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => second()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/nexia.jpg",),fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 20),
              SpinKitFadingCircle(
                color: Colors.blue,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
          width: double.infinity,
          height: 200,
          child:  Center(child: Lottie.asset('lib/lottie/lottie.json')),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red,Colors.blue],stops:[0.5,0.5] 
            )
          ),
         ),
         Stack(
           children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                  width: 250,
                  height: 400,
                  color: Colors.red,
                 ),
                 Container(
                  width: 250,
                  height: 400,
                  color: Colors.blue,
                 ),
               ],
             ),
             GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
           ],
         ),
         
       ],
     ),
     
    );
  }
}
class oddiy{
  String? ism;
    String? chiq;
    oddiy({
  this.chiq,this.ism
    });
}
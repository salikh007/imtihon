import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dert(),
  ));
}

class dert extends StatefulWidget                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
  const dert({super.key});

  @override
  State<dert> createState() => _dertState();
}

class _dertState extends State<dert> with TickerProviderStateMixin {
  late final AnimationController nom =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat(reverse: true);

       late final Animation <double>dd = CurvedAnimation(parent: nom, curve: Curves.bounceIn);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: dd,
          child: CircleAvatar(
            backgroundImage: AssetImage("rasm/car.jpg"),
            radius: 70,
            backgroundColor: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
      ),
    );
  }
}

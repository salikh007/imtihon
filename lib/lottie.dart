import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
    home: Lott(),
    )
  );
}
class Lott extends StatefulWidget {
  const Lott({super.key});

  @override
  State<Lott> createState() => _LottState();
}

class _LottState extends State<Lott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset('lib/lottie/lottie.json'),
    );
  }
}
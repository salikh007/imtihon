import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: jklmn(),
    )
  );
}
class jklmn extends StatefulWidget {
  const jklmn({super.key});

  @override
  State<jklmn> createState() => _jklmnState();
}

class _jklmnState extends State<jklmn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Container(
          width: 400,
          height: 100,
          child: Row(
            children: [
              Text("Communication"),
              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
            ],
          ),
        )
      ],
    ),  
    );
  }
}
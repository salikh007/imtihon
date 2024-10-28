import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: durbek(),
    )
  );
}
class durbek extends StatefulWidget {
  const durbek({super.key});

  @override
  State<durbek> createState() => _durbekState();
}

class _durbekState extends State<durbek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
        Image.asset("rasm/food.jpg",fit: BoxFit.cover,),
        Center(
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100))
            ),
          ),
        )
        ],
      ),
    );
  }
}
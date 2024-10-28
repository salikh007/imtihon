import 'package:flutter/cupertino.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: A(),
  ));
}

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Decoration",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 43, 86, 44),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClayContainer(
              color: const Color.fromARGB(255, 86, 122, 87),
              width: 200,
              height: 200,
              curveType: CurveType.concave,
              child: Icon(Icons.phone_iphone,size: 50,color: Colors.blue,),
              borderRadius: 100,
              parentColor: Colors.blue,
              spread: 1,
            ),
            SizedBox(height: 15,),
            ClayContainer(
              color: Colors.black,
              width: 200,
              height: 200,
              curveType: CurveType.convex,
              child: Icon(Icons.apple,size: 50,color: Colors.blue,),
               borderRadius: 100,
               parentColor: Colors.blue,
               spread: 1,
            ),
            SizedBox(height: 15,),
             ClayContainer(
              color: Color.fromARGB(255, 136, 92, 25),
              width: 200,
              height: 200,
              curveType: CurveType.convex,
              child: Icon(Icons.home,size: 50,color: Colors.blue,),
               borderRadius: 100,
               parentColor: Colors.blue,
               spread: 1,
            )
          ],
        ),
      ),
    );
  }
}

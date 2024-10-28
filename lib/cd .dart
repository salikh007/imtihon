import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "text",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [Text("text",style: TextStyle(color: Colors.white,fontSize: 20),),Icon(Icons.school,size: 20,color: Colors.white,),],
        backgroundColor: Color.fromARGB(255, 50, 39, 35),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("rasm/car.jpg"),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                height: 150,
                color: Color.fromARGB(255, 109, 55, 13),
                child: Icon(Icons.mosque,size: 100,color: Colors.white,),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 1000,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("rasm/d.png"),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 1000,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("rasm/nexia.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 70),)),
                      width: 300,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Center(child: Text("2",style: TextStyle(color: Colors.white,fontSize: 70),)),
                      width: 300,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Center(child: Text("3",style: TextStyle(color: Colors.white,fontSize: 70),)),
                      width: 300,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("rasm/o.jpg"),fit: BoxFit.cover)
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ));
}

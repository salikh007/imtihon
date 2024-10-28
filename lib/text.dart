import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Center(child: Text("text",style: TextStyle(fontSize: 50),)),
                  width: 200,
                  height: 100,
                  color: Colors.white,
                ),
              ],
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      color: Colors.green,
                    ),
                  Container(
                    width: 300,
                    height: 150,
                    color: const Color.fromARGB(255, 49, 27, 26),
                  )
                  ],
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(child: Center(child: Text("text",style: TextStyle(fontSize: 50),)),
                            width: 200,
                            height: 100,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 345,
                          height: 150,
                          color: Colors.pink,
                        ),
                        Container(
                          width: 345,
                          height: 150,
                          color: Colors.black,
                        ),
                        Container(
                          width: 345,
                          height: 150,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Container(child: Center(child: Text("text",style: TextStyle(fontSize: 50),)),
                            width: 100,
                            height: 100,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(child: Text("text",style: TextStyle(fontSize: 50),)
                          ,
                            width: 100,
                            height: 100,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}
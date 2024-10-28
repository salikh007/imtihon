import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 10,
          backgroundColor: const Color.fromARGB(255, 223, 209, 225),
          child: Icon(Icons.cookie),
        ),
        actions: [
          Text(
            "BOILING  POT",
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 70),
              child: Text(
                "Perfect details",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 70),
              child: Text(
                "Ingenuity   quality",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "01.",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("-------------------------------------------"),
                        Text(
                          "Leather handle",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Container(
                      width: 110,
                      height: 140,
                      child: Image.asset(
                        "rasm/sabzi.jpg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(height: 20,),
             Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "02.",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("-------------------------------------------"),
                        Text(
                          "Safety cooling hole",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Container(
                      width: 110,
                      height: 140,
                      child: Image.asset(
                        "rasm/car.jpg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "03.",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("-------------------------------------------"),
                        Text(
                          "Heat dissipation",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("anti-skid base",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Container(
                      width: 110,
                      height: 140,
                      child: Image.asset(
                        "rasm/sabzi.jpg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ],
        ),
      ),
    ),
  ));
}

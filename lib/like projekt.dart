import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: salom(),
  ));
}

class salom extends StatefulWidget {
  const salom({super.key});

  @override
  State<salom> createState() => _salomState();
}

class _salomState extends State<salom> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "imtihon",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 60, 46),
      ),
      backgroundColor: const Color.fromARGB(255, 46, 60, 46),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "nissan",
                          style: TextStyle(fontSize: 30),
                        )),
                        color: Colors.white,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          "ferreri",
                          style: TextStyle(fontSize: 30),
                        )),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          "BMW",
                          style: TextStyle(fontSize: 30),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("rasm/5.jpg"),
                          radius: 50,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("rasm/ferrari.jpg"),
                          radius: 50,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("rasm/bmw.webp"),
                          radius: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Table(border: TableBorder.all(color: Colors.white),
            children: [
              TableRow(children: [
                TableCell(
                    child: Center(
                  child: Text(
                    "nissan",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    "ferrari",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                        child: Text(
                  "BMW",
                  style: TextStyle(fontSize: 30),
                )))
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                  child: Text(
                    "nissan ",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    "ferrari GTR",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    "BMW ",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                  child: Text(
                    "nissan",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    "ferrari",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    "BMW",
                    style: TextStyle(fontSize: 30),
                  ),
                ))
              ])
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 168,
                    height: 150,
                    child: Image.asset("rasm/nexia.jpg",fit: BoxFit.cover,),
                  ),
                  Container(
                    width: 168,
                    height: 150,
                    child: Image.asset("rasm/arab.png",fit: BoxFit.cover,),
                  ),
                  Container(
                    width: 165,
                    height: 150,
                    child: Image.asset("rasm/food.jpg",fit: BoxFit.cover,),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 168,
                    height: 195,
                    child: Image.asset("rasm/bmw.webp",fit: BoxFit.cover,),
                  ),
                  Container(
                width: 168,
                height: 195,
                child: Image.asset("rasm/car.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 165,
                height: 195,
                child: Image.asset("rasm/sabzi.jpg",fit: BoxFit.cover,),
              )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}

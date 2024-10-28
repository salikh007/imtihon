import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: rich(),
  ));
}

class rich extends StatefulWidget {
  const rich({super.key});

  @override
  State<rich> createState() => _richState();
}

class _richState extends State<rich> {
  String img = "rasm/images.jpg";
  int tekshur = 0;
  void nomg() {
    setState(() {
      if (tekshur == 1) {
        img = "rasm/car.jpg";
      } else if (tekshur == 2) {
        img = "rasm/food.jpg";
      } else if (tekshur == 3) {
        img = "rasm/j.jpg";
      } else if (tekshur == 4) {
        img = "rasm/ferrari.jpg";
      } else if (tekshur == 5) {
        img = "rasm/pizza.jpg";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: InkWell(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage("rasm/car.jpg"),
                            fit: BoxFit.cover))),
                onTap: () {
                  tekshur = 1;
                  nomg();
                },
              )),
              Expanded(
                  child: InkWell(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.green.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                          image: AssetImage("rasm/food.jpg"),
                          fit: BoxFit.cover)),
                ),
                onTap: () {
                  tekshur = 2;
                  nomg();
                },
              )),
              Expanded(
                  child: InkWell(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage("rasm/j.jpg"),
                            fit: BoxFit.cover))),
                onTap: () {
                  tekshur = 3;
                  nomg();
                },
              )),
              Expanded(
                  child: InkWell(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage("rasm/ferrari.jpg"),
                            fit: BoxFit.cover))),
                onTap: () {
                  tekshur = 4;
                  nomg();
                },
              )),
              Expanded(
                  child: InkWell(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                            image: AssetImage("rasm/pizza.jpg"),
                            fit: BoxFit.cover))),
                onTap: () {
                  tekshur = 5;
                  nomg();
                },
              )),
            ],
          ),
          Expanded(
              child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ))
        ],
      ),
    );
  }
}

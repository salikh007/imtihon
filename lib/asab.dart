import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: E(),
  ));
}

class E extends StatefulWidget {
  const E({super.key});

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Grid view App",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            "home",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.add_card_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            "card",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.add_card_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            "cards",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  width: 400,
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 74, 68, 68),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 166,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("rasm/o.jpg"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Container(
                      width: 166,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("rasm/5.jpg"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Container(
                      width: 166,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("rasm/car.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 166,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("rasm/russia.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        Container(
                          width: 166,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("rasm/audi.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        Container(
                          width: 166,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("rasm/o.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 166,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("rasm/nexia.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Container(
                              width: 166,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("rasm/o.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Container(
                              width: 166,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("rasm/images.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 166,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("rasm/usa.png"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),
                                Container(
                                  width: 166,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("rasm/sabzi.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),
                                Container(
                                  width: 166,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("rasm/o.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("rasm/o.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("rasm/ferrari.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("rasm/arab.png"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("rasm/daraxt.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("rasm/food.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    Container(
                                      width: 166,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("rasm/temur.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: asd(),
    ),
  );
}

class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                height: 500,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.blue,
              ),
            ],
          ),
          Column(
            children: [
              Positioned(
                  child: Container(
                width: 563,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(100))),
              )),
              Positioned(
                  child: Container(
                width: 563,
                height: 473,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100))),
              )),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: const Color.fromARGB(255, 58, 50, 50)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("rasm/cr7.jpg"),
                    ),
                    Text(
                      "Cristiano Ronaldo",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    Text("crronaldo@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white))
                  ],
                )),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => asd()));
                },
               title: Text("data"),
               ),
                ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => lkj()));
                },
               title: Text("data"),
               ),
          ],
        ),
      ),
    );
  }
}
class lkj extends StatefulWidget {
  const lkj({super.key});

  @override
  State<lkj> createState() => _lkjState();
}

class _lkjState extends State<lkj> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
                Icon(
                  Icons.search,
                  size: 50,
                  color: Colors.red,
                )
              ],
            ),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("rasm/j.jpg"), fit: BoxFit.cover),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(70))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("rasm/burger.jpg"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Burger King",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset("rasm/aksiya.jpg"),
                        ),
                        Text(
                          "50%",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "off",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 15),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Delivery in 35 mins. Rating 5.00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(Icons.star_border),
                                    ),
                                    Text(
                                      "Special",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(Icons.dinner_dining_sharp),
                                    ),
                                    Text(
                                      "Tezn time",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 182, 179, 179),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(Icons.breakfast_dining),
                                    ),
                                    Text(
                                      "Bread",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(Icons.fastfood),
                                    ),
                                    Text(
                                      "Fast food",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("rasm/b.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '\$26.03',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 240),
                                          child: Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Beef Burger Meat",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20),
                                    ),
                                    Text(
                                        "This classic burger is make from BBQ meat")
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: 450,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.black)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("rasm/ch.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '\$25.32',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 240),
                                          child: Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Meat Burger Tomato",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20),
                                    ),
                                    Text(
                                        " burger is make from BBQ meat and tomato")
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: 450,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.black)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '\$25.00',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "View Cart",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                              )
                            ],
                          ),
                          width: 450,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: push(),
  ));
}

class push extends StatefulWidget {
  const push({super.key});

  @override
  State<push> createState() => _pushState();
}

class _pushState extends State<push> {
  int select = 0;

  List nomlist = [
    bir(),
    ikki(),
    uch(),
  ];
  void hx(index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nomlist.elementAt(select),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "home",
              backgroundColor: Color.fromARGB(255, 160, 78, 174),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 149, 109, 214),
              label: "cart",
              icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 155, 157, 34),
              label: "person",
              icon: Icon(Icons.person)),
        ],
        onTap: hx,
        selectedItemColor: Color.fromARGB(255, 16, 84, 1),
        currentIndex: select,
      ),
    );
  }
}

class bir extends StatefulWidget {
  const bir({super.key});

  @override
  State<bir> createState() => _birState();
}

class _birState extends State<bir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 56, 19, 6),
          leading: Icon(
            Icons.lightbulb_outline,
            color: Colors.yellow,
          ),
          title: Center(
              child: Text(
            "FoodVaddy",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.yellow),
          )),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.yellow,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(child: Image.asset("rasm/b.jpg")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                "Burger",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 25),
                              ),
                            ),
                            Text("5,5 Kinds",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 15))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(child: Image.asset("rasm/pizza.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                "Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 25),
                              ),
                            ),
                            Text("23 Kinds",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 15))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 199),
                child: Container(
                  width: 200,
                  height: 50,
                  child: Row(children: [
                    Icon(
                      Icons.loyalty,
                      color: Colors.yellow,
                    ),
                    Text("Today`s Dealts",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25))
                  ]),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          width: 200,
                          height: 150,
                          child: Image.asset("rasm/cake.png")),
                    ),
                    Text(
                      "Black forest_",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    Text(
                      "\$44.0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Image.asset("rasm/s.png"),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    Text(
                      "Frut cake_",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    Text(
                      "\$20.0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        width: 200,
                        height: 150,
                        child: Image.asset(
                          "rasm/food.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "meat_",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    Text(
                      "\$10.0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Image.asset(
                        "rasm/sabzi.jpg",
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    Text(
                      "vegetable_",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    Text(
                      "\$5.0",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ])
            ],
          ),
        ));
  }
}

class ikki extends StatefulWidget {
  const ikki({super.key});

  @override
  State<ikki> createState() => _ikkiState();
}

class _ikkiState extends State<ikki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Monday, August  24",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "(4)",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("rasm/burger.png"),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          "Salmon Burgers",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "-    1    +",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("\$ 10.0"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.plus_one,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("rasm/pizza.png"),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          "Banh Mi Pizza",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "-    1    +",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("\$ 11.0"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.plus_one,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("rasm/chicken.png"),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          "Afaham chicken",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "-    1    +",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("\$ 3.0"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.plus_one,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("rasm/food.jpg"),
                      width: 120,
                      height: 120,
                    ),
                    Column(
                      children: [
                        Text(
                          "Caramel sause",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "-    1    +",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("\$ 30.0"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(
                          Icons.plus_one,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "59.0",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                    child: Text(
                  "CheckOut",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class uch extends StatefulWidget {
  const uch({super.key});

  @override
  State<uch> createState() => _uchState();
}

class _uchState extends State<uch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 400),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("rasm/arab.png"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                ),
              ),
            ),
            Positioned(
                top: 200,
                left: 60,
                child: Container(
                  width: 350,
                  height: 390,
                  color: Color.fromARGB(255, 231, 226, 225),
                )),
            Positioned(
                top: 160,left: 70,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("rasm/images.png"),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Set Your Name",style: TextStyle(fontSize: 30),),
                      ),
                      Text("Set Your Email",style: TextStyle(color: Colors.grey),),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Icon(Icons.lightbulb,color: Colors.yellow,),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile Number",style: TextStyle(color: Colors.grey),),
                          Text("Set your mobile number",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                          SizedBox(height: 30,),
                          Text("Adress",style: TextStyle(color: Colors.grey),),
                          Text("Set Your Email Adress",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

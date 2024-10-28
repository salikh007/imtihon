import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fdsa(),
  ));
}

class fdsa extends StatefulWidget {
  const fdsa({super.key});

  @override
  State<fdsa> createState() => _fdsaState();
}

class _fdsaState extends State<fdsa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Tabbar",
              style: TextStyle(color: Color.fromARGB(255, 108, 104, 104)),
            )),
            backgroundColor: Color.fromARGB(255, 46, 46, 46),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.phone),
                text: "phone",
              ),
              Tab(
                icon: Icon(Icons.people),
                text: "kontark",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "settings",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "profile",
              )
            ]),
          ),
          body: TabBarView(children: [bir(), ikki(), uch(), turt()]),
        ));
  }
}

class bir extends StatefulWidget {
  const bir({super.key});

  @override
  State<bir> createState() => _birState();
}

class _birState extends State<bir> {
  List nom = [
    "dushanba",
    "seshanba",
    "chorshanba",
    "payshanba",
    "juma",
    "shanba",
    "yakshanba"
  ];
  Widget templete(s) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 200,
          height: 100,
          color: Color.fromARGB(255, 46, 1, 87),
          child: Center(
              child: Text(
            s,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: nom.map((e) => templete(e)).toList())));
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
      backgroundColor: Color.fromARGB(255, 245, 245, 246),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 26, 77),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        color: const Color.fromARGB(255, 161, 157, 157),
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 149, 146, 146)),
                      )
                    ],
                  ),
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 211, 214),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 250,
                  height: 250,
                  child: Image(
                    image: AssetImage("rasm/jhs.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.speed,
                        size: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Weight",
                          style: TextStyle(fontSize: 45),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 200),
                        child: Container(
                          child: Center(
                              child: Text(
                            "83     hg",
                            style: TextStyle(fontSize: 20),
                          )),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 40, 41, 61))),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.height,
                          size: 100,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Height",
                            style: TextStyle(fontSize: 45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 210),
                          child: Container(
                            child: Center(
                                child: Text(
                              "1,76 ds",
                              style: TextStyle(fontSize: 20),
                            )),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: Color.fromARGB(255, 40, 41, 61))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.settings_accessibility,
                            size: 70,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Age",
                            style: TextStyle(fontSize: 35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 280),
                          child: Container(
                            child: Center(
                                child: Text(
                              "28",
                              style: TextStyle(fontSize: 20),
                            )),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: Color.fromARGB(255, 40, 41, 61))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              width: double.infinity,
              height: 275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.yellow),
            )
          ],
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
        backgroundColor: Color.fromARGB(255, 154, 176, 188),
        body: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Your BMI is Normal",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      "22.5",
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 10, 62),
                          fontSize: 60,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "The body mass index {BM} is a value ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "derived from the mass {weight} and {height}",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "of an individual",
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20)),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            color: Colors.green,
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            color: Colors.orange,
                          ),
                          Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("14.5"),
                        Text("24.5"),
                        Text("27.9"),
                        Text("34.5")
                      ],
                    )
                  ],
                ),
                width: 450,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          "Here are some healthy ways to gain weight ",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("When you're under weight",
                            style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.watch_later,color: Colors.blue,size: 50,),
                            Text("Eat more frequently",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.icecream,color: Colors.orange,size: 50,),
                            Text("choose nutrient rich foods",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.health_and_safety,color: Colors.green,size: 50,),
                            Text("exercise",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  width: 450,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )
            ],
          ),
        ));
  }
}

class turt extends StatefulWidget {
  const turt({super.key});

  @override
  State<turt> createState() => _turtState();
}

class _turtState extends State<turt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 46, 46),
      body: Center(
          child: Icon(
        Icons.home,
        size: 150,
        color: Color.fromARGB(255, 93, 88, 88),
      )),
    );
  }
}


// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
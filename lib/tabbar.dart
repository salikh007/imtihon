import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                text: "settings",
              ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 40, 4, 113)),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("rasm/cr7.jpg"),
                    ),
                    Text("flutter")
                  ],
                )),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => olma()));
              },
              title: Text("1"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => nok(),));
              },
              title: Text("2"),
            ),
         
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 144, 140, 105),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 200, right: 300),
            child: Opacity(
              opacity: 0.5,
              child: Center(
                child: Container(
                  child: Center(
                      child: Text(
                    "1",
                    style: TextStyle(fontSize: 40),
                  )),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30))),
                ),
              ),
            ),
          ),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("rasm/car.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  topLeft: Radius.circular(40))),
        ),
      ),
    );
  }
}

class ikki extends StatefulWidget {
  const ikki({super.key});

  @override
  State<ikki> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ikki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 200,
          ),
          Text(
            "2",
            style: TextStyle(fontSize: 50),
          )
        ],
      )),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "3",
              style: TextStyle(fontSize: 50),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 100,
                        color: Color.fromARGB(255, 23, 23, 156),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
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
    return Icon(
      Icons.home,
      size: 100,
    );
  }
}

class olma extends StatefulWidget {
  const olma({super.key});

  @override
  State<olma> createState() => _olmaState();
}

class _olmaState extends State<olma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class nok extends StatefulWidget {
  const nok({super.key});

  @override
  State<nok> createState() => _nokState();
}

class _nokState extends State<nok> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
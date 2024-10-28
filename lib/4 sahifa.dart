import 'package:flutter/material.dart';

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
  List nomlist = [bir(), ikki(), uch(), turt()];
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
              label: "bir",
              backgroundColor: Color.fromARGB(255, 160, 78, 174),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 149, 109, 214),
              label: "ikki",
              icon: Icon(Icons.money)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 155, 157, 34),
              label: "uch",
              icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 77, 158, 208),
              label: "turt",
              icon: Icon(Icons.star))
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
        title: Center(child: Text("Flutter")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 400, left: 290),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasm/food.jpg"), fit: BoxFit.cover)),
      ),
    );
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
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 150,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 200,
              left: 200,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(31, 54, 197, 204),
        leading: Icon(Icons.home),
        actions: [Icon(Icons.search), Icon(Icons.mosque)],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Opacity(
            opacity: 0.70,
            child: Container(
              width: 400,
              height: 300,
              child: Center(
                  child: Text(
                "Red",
                style: TextStyle(color: Colors.white, fontSize: 50),
              )),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 67, 6, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
            ),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasm/sabzi.jpg"), fit: BoxFit.cover)),
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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "4",
              style: TextStyle(color: Colors.white),
            )),
            backgroundColor: const Color.fromARGB(255, 5, 27, 6),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.one_k),text: "first",),
              Tab(icon: Icon(Icons.two_k),text: "second",)
            ],),
          ),
          body: TabBarView(children: [suha(),kuha(),
          Container(child: Container(width: 50,
          height: 50, color: Colors.brown,), width: 250,height: 250,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/car.jpg",),fit: BoxFit.cover)),)
          ],),
        ));
  }
}
class suha extends StatelessWidget {
  const suha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: Text("1",style: TextStyle(fontSize: 100),)),
    );
  }
}
class kuha extends StatelessWidget {
  const kuha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("2",style: TextStyle(fontSize: 100),)),
    );
  }
}
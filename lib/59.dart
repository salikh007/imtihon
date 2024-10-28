import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 22, 59),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: GradientText(
            'Welcome',
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.pink,
              ],
            ),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  GradientText(this.text, {required this.gradient, required this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Qo`ng`iroqlar",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 21, 143, 213),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.message),
                text: "Message",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Hali habarlar mavjud emas',
                style: TextStyle(fontSize: 30),
              ),
            ),
            iju(),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'rasm/sa.gif',
                      width: 200,
                      height: 200,
                    ),
                    Text(
                      "Saqlangan",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "kontaklarizga bir",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "tegishda telefon qiling",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        
        endDrawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 55, 144),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("rasm/car.jpg"),
                    ),
                    Text(
                      "Sales manager",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "+998908970777",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(" Home page"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lkj()),
                  );
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Settings"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lkj()),
                  );
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Calls"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lkj extends StatefulWidget {
  const Lkj({Key? key}) : super(key: key);

  @override
  _LkjState createState() => _LkjState();
}

class _LkjState extends State<Lkj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 50,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class iju extends StatefulWidget {
  const iju({super.key});

  @override
  State<iju> createState() => _ijuState();
}

class _ijuState extends State<iju> {
  List asoslist = [tuy(), yut(), uyt()];
  int tanla = 0;
  String bbb = "salom";

  void function(index) {
    setState(() {
      tanla = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: asoslist.elementAt(tanla),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: tanla, onTap: function, items: [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "saralanangan"),
        BottomNavigationBarItem(
            icon: Icon(Icons.punch_clock), label: "Oxirgilar"),
            
        BottomNavigationBarItem(
            icon: Icon(Icons.contact_page), label: "Kontaklarim")
      ]),
    );
  }
}

class yut extends StatefulWidget {
  const yut({super.key});

  @override
  State<yut> createState() => _yutState();
}

class _yutState extends State<yut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'rasm/sa.gif',
                      width: 200,
                      height: 200,
                    ),
                    Text(
                      "Saqlangan",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "kontaklarizga bir",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "tegishda telefon qiling",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class tuy extends StatefulWidget {
  const tuy({super.key});

  @override
  State<tuy> createState() => _tuyState();
  
}

class _tuyState extends State<tuy> {
  List nom009=[
oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),
        oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),oddiy(
   soat: "908970777",
   rasm: "rasm/images.png",
   ism: "Muhammadsolih",
        ),
        
  ];
  Widget templete(nom1){
    return Container(
      width: 600,
      height: 70,
      decoration: BoxDecoration(
      color: Color.fromARGB(255, 203, 247, 248),
      borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: Row(
        children: [
          Image.asset(nom1.rasm),
          Column(
            children: [
              Text(nom1.rasm),
            ],
          ),
          Text(nom1.ism),
         
        ],
      ),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: nom009.map((e) => templete(e)).toList(),
      ),
    );
  }
}

class uyt extends StatefulWidget {
  const uyt({super.key});

  @override
  State<uyt> createState() => _uytState();
}

class _uytState extends State<uyt> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }}
  class oddiy {
  String? rasm;
  String? ism;
  String? soat;
  
  oddiy({this.rasm, this.ism, this.soat});
}
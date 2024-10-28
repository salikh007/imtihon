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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // To'g'ri kirish ma'lumotlari
  String correctEmail = 'com';
  String correctPassword = '3';

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == correctEmail && password == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email yoki parol noto\'g\'ri!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange.shade800, Colors.black87],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Login container with circle avatar on top
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.all(32.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 202, 204, 240),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 50), // Gap for the avatar
                          TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'Email ID',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -50, // Halfway out of the container
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 470,
            child: ElevatedButton(
              onPressed: _login,
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 121, 31),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.eco,
                  color: Colors.white,
                ),
                Text(
                  "Greenery nys",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Product",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.water,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                Text("water",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(
                  width: 240,
                ),
                Text(
                  'cvory 7 day',
                  style: TextStyle(
                      color: Color.fromARGB(255, 228, 224, 224), fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                Text("Humidity",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(
                  width: 205,
                ),
                Text(
                  'up to k1%',
                  style: TextStyle(
                      color: Color.fromARGB(255, 227, 225, 225), fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.photo_size_select_actual,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                Text("Size",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
                SizedBox(
                  width: 260,
                ),
                Text(
                  '38 -68k3l',
                  style: TextStyle(
                      color: Color.fromARGB(255, 239, 237, 237), fontSize: 17),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Container(
                width: 450,
                height: 85,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Delivery information",
                      style: TextStyle(
                          color: Color.fromARGB(255, 243, 243, 243),
                          fontSize: 25),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(45)),
                    color: Color.fromARGB(255, 10, 61, 11)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Container(
                width: 450,
                height: 85,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Return Policy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 243, 243, 243),
                          fontSize: 25),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(45)),
                    color: Color.fromARGB(255, 10, 61, 11)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 40),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sahfa(),
                          ));
                    },
                    child: Container(
                      width: 190,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "obdz ts card",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      height: 95,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(70))),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class sahfa extends StatefulWidget {
  const sahfa({super.key});

  @override
  State<sahfa> createState() => _sahfaState();
}

class _sahfaState extends State<sahfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 77, 33),
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          "Fiddle Leaf Fig ",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 275),
                        child: Text(
                          "Topiary",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: Text(
                          "1xp milaning pcz",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 310),
                        child: Text(
                          "\$ 85",
                          style: TextStyle(
                              color: Color.fromARGB(255, 24, 90, 26),
                              fontSize: 40,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => futh(),
                                    ));
                              },
                              child: CircleAvatar(
                                radius: 40,
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 36, 92, 38),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 250,
                            color: Colors.white,
                            child: Center(
                                child: Image.asset(
                              "rasm/plant.png",
                              fit: BoxFit.cover,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "roating",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 200,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "250",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "tf",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Text(
                                "wegger",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 49, 20),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 200,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "18",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "tf",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Text(
                                "basics",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 19, 49, 20),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25))),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class futh extends StatefulWidget {
  const futh({super.key});

  @override
  State<futh> createState() => _futhState();
}

class _futhState extends State<futh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: Container(
              child: Center(
                child: Text(
                  "Detalls",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Color.fromARGB(255, 36, 95, 38)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Container(
                width: 200, height: 150, child: Image.asset("rasm/barg.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text("Plant Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
          ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: Text(
                'The fiddle leaf fig tree, or ficus lyrata, is a species of plant within the fig genus native to the lowland tropical rainforests of western Africa.',
                style: TextStyle(fontSize: 16),
              ),
           ),
            Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Container(
                width: 200, height: 100, child: Image.asset("rasm/tuvag.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text("Pot Details",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
          ),
          Padding(
             padding: const EdgeInsets.all(15),
             child: Text(
                'Have a container picked out already? Want to plant the tree yourself? Don\'t mind a little dirt on the floor!',
                style: TextStyle(fontSize: 16),
              ),
           ),
        ],
      ),
    );
  }
}

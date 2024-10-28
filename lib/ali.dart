import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String correctUsername = 'usm';  
  String correctPassword = 'ali';  

  void login() {
    String enteredUsername = usernameController.text;
    String enteredPassword = passwordController.text;

    if (enteredUsername == correctUsername && enteredPassword == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username yoki parol noto\'g\'ri'),
          backgroundColor: Color.fromARGB(255, 6, 216, 198),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/food.jpg"),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none, 
                  ),
                ),
              ),
              SizedBox(height: 10), 
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20), 
              Container(
                child: ElevatedButton(
                  onPressed: login,
                  child: Text('next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => sahifa(),));}),
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
class sahifa extends StatefulWidget {
  const sahifa({super.key});

  @override
  State<sahifa> createState() => _sahifaState();
}

class _sahifaState extends State<sahifa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {Navigator.pop(context);},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green[700],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Kentia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Price\n\$23,-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        
                         SizedBox(width: 80),
                    Image.network(
                      'rasm/plant.png', 
                      height: 180,
                    ),
                      ],
                    ),
                     Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Price\n\$23,-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ), Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Price\n\$23,-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                  ],
                ),
               
               
                SizedBox(height: 20),
                Expanded(
                  child: Container(alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'The Kentia is a very popular and strong palm for the home, office or school. This palm creates tropical atmospheres with its 150 cm up to 180 cm height. The Kentia can be used in any interiors, classic interior and in a modern environment.',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 20),Text(
                          'Specifications',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('• Suitable for: inside'),
                        Text('• Leaf color: green'),
                        Text('• Maintenance: easy'),
                        Text('• Height: 150 cm - 180 cm'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedAlign(
            alignment: Alignment.bottomRight,
            duration: Duration(seconds: 3),
            child: Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
              ),
              child: Column(
                children: [
                  Icon(Icons.wb_sunny, color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    'location in the sun',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2x p.m. water',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'room temperature',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
    
  

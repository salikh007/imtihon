import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void sekund() {
    setState(() {
      Future.delayed(Duration(seconds: 3)).then((a1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ikki()));
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sekund();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitWave(
        color: Colors.green,
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
  bool nom = true;
  void onkor() {
    setState(() {
      nom = !nom;
    });
  }

  bool select = true;
  void inkor() {
    setState(() {
      select = !select;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 248, 243, 198),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(seconds: 2),
              alignment: select ? Alignment.topLeft : Alignment.bottomLeft,
              child: Text(
                "text",
                style: TextStyle(fontSize: 30),
              ),
            ),
            AnimatedAlign(
              duration: Duration(seconds: 2),
              alignment: select ? Alignment.topRight : Alignment.topLeft,
              child: Text(
                "text",
                style: TextStyle(fontSize: 30),
              ),
            ),
            AnimatedAlign(
              duration: Duration(seconds: 2),
              alignment: select ? Alignment.bottomRight : Alignment.topRight,
              child: Text(
                "text",
                style: TextStyle(fontSize: 30),
              ),
            ),
            AnimatedAlign(
              duration: Duration(seconds: 2),
              alignment: select ? Alignment.bottomLeft : Alignment.bottomRight,
              child: Container(
                  width: 100,
                  height: 100,
                  child: Lottie.asset('lib/lottie/lottie.json')),
            ),
            Center(
                child: GestureDetector(
              onDoubleTap: () {
                onkor();
              },
              onLongPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => uch()));
              },
              onTap: () {
                inkor();
              },
              child: Container(
                  width: 50,
                  height: 30,
                  color: Colors.white,
                  child: Center(child: Text("ok"))),
            )),
            Positioned(
                top: 400,
                left: 200,
                child: Text(
                  "ikki marta bosildi",
                  style: TextStyle(
                    color:
                        nom ? Colors.black : Color.fromARGB(255, 248, 243, 198),
                  ),
                ))
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
      body: Center(
        child: Text('keyingi'),
      ),
    );
  }
}

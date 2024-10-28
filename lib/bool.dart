import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: derect(),
  ));
}

class derect extends StatefulWidget {
  const derect({super.key});

  @override
  State<derect> createState() => _derectState();
}

class _derectState extends State<derect> {
  bool nom = true;
  void a() {
    setState(() {
      nom = !nom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nom
          ? Color.fromARGB(255, 255, 255, 255)
          : Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
          title: Center(
            child: Text(
              nom ? "red" : "yellow",
              style: TextStyle(fontSize: 30),
            ),
          ),
          backgroundColor: nom ? Colors.red : Colors.yellow),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(nom? Icons.car_repair:Icons.airplanemode_inactive,color: nom?Colors.red:const Color.fromARGB(255, 0, 0, 0),size: 40,),
            Container(
              width: nom?100:150,
              height: nom?100:150,
              decoration: BoxDecoration(
                image: DecorationImage(image:  AssetImage(nom?"rasm/nexia.jpg":"rasm/food.jpg"),fit: BoxFit.cover)
              ),
            ),
            Container(alignment: nom?Alignment.topLeft:Alignment.bottomRight,
              color: Color.fromARGB(255, 15, 151, 28),
              width: 300,
              height:100,
              child: Icon(Icons.home,color:Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: InkWell(
                  onTap: () {
                    a();
                  },
                  child: Container(
                    child: Icon(nom ? Icons.done : Icons.cancel,
                        color: nom ? Color.fromARGB(73, 0, 0, 0) : Colors.green,
                        size: nom ? 30 : 10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: nom ? Colors.red : Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  )),
            ),
            
          ],
        ),
      ),
    );
  }
}

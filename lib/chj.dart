import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dsa(),
    )
  );
}
class dsa extends StatefulWidget {
  const dsa({super.key});

  @override
  State<dsa> createState() => _dsaState();
}

class _dsaState extends State<dsa> {
  List nom=[
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg",
    "rasm/car.jpg",
    "rasm/nexia.jpg",
    "rasm/food.jpg",
    "rasm/pizza.jpg"
  ];
  Widget templetee(nom2){
    return 
        Container(
          width: 200,
          height: 100,
        child: Image.asset(nom2,fit: BoxFit.cover,),
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home),
                      Icon(Icons.search),
                      Icon(Icons.messenger)
                    ],
                  ),
                  width: 400,
                  height: 100,
                  color: const Color.fromARGB(255, 77, 1, 26),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
                children: nom.map((e) => templetee(e)).toList()
              
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

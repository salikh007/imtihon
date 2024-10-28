import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fight(),
  ));
}

class fight extends StatefulWidget {
  const fight({super.key});

  @override
  State<fight> createState() => _fightState();
}

class _fightState extends State<fight> {
  List grad = [
    nom(rasm: "rasm/images.png", ism: "MuhammadSolih"),
    nom(rasm: "rasm/images.png", ism: "Fazlulloh"),
    nom(rasm: "rasm/images.png", ism: "Umar"),
    nom(rasm: "rasm/images.png", ism: "Ibarohim"),
    nom(rasm: "rasm/images.png", ism: "Anasxon"),
    nom(rasm: "rasm/images.png", ism: "Abbos"),
    nom(rasm: "rasm/images.png", ism: "Shukurxon"),
    nom(rasm: "rasm/images.png", ism: "Ayubxon"),
    nom(rasm: "rasm/images.png", ism: "AbdulVoris"),
    nom(rasm: "rasm/images.png", ism: "Azizxon"),
  ];
  Widget non(mon89) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        height: 150,
        color: Color.fromARGB(255, 156, 191, 219),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
               backgroundImage: AssetImage(mon89.rasm),
            ),
            SizedBox(width: 40,),
            Text("ismi: \n ${ mon89.ism}",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.search,
              color: const Color.fromARGB(255, 32, 27, 27),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(31, 19, 13, 86)])),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: const Color.fromARGB(255, 44, 24, 16),
              ),
            ),
            Padding(
          padding: const EdgeInsets.all(30),
          child: Container(width: double.infinity,height: 398,
            child: ListView(
              children: grad.map((e) => non(e)).toList()
            ),
          ),
        )
          ],
        ),
        
        );
  }
}

class nom {
  String? rasm;
  String? ism;
  nom({this.ism, this.rasm});
}

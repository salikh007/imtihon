import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listm(),
  ));
}

class listm extends StatefulWidget {
  const listm({super.key});

  @override
  State<listm> createState() => _listmState();
}

class _listmState extends State<listm> {
  List nomm = ["2", "3", "4", "5",];
  List nonm = ["6", "7", "8", "9",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.star,size: 40,color: Colors.black,),
        actions: [Icon(Icons.star,size: 40,color: Colors.black,)],
        title: Center(
            child: Text(
          'Flutter',
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: nomm
                    .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 55, 8, 70),
                          child: Center(child: Text(e,style: TextStyle(color: Colors.white,fontSize: 30),))),
                    ))
                    .toList()),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: nonm.map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(width: 100,height: 100,color: Color.fromARGB(255, 3, 30, 12), child: Center(child: Text(e,style: TextStyle(color: Colors.white,fontSize: 30)))),
                      )).toList()
                    )
          ],
        ),
      ),
    );
  }
}


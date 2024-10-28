import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

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
  List nomlist = [bir(), ikki(), uch(), ];
  void hx(index) {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nomlist.elementAt(select),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.home)
        ])
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
    return Scaffold(floatingActionButton: FloatingActionButton( child: Text("+"),  onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>my()))),
    body: Center(child: Text("1",style: TextStyle(fontSize: 100),)),
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
    return const Placeholder();
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
    return const Placeholder();
  }
}

class my extends StatefulWidget {
  const my({super.key});

  @override
  State<my> createState() => _myState();
}

class _myState extends State<my> {
  final page=[
   men(),sen()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: page)
    );
  }
}

class men extends StatefulWidget {
  const men({super.key});

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  void m (){
    final s = SnackBar(content: Text("text"));
    ScaffoldMessenger.of(context).showSnackBar(s);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
      color: const Color.fromARGB(255, 66, 7, 2),
      child: Center(child: Column(
        children: [
          Text("1",style: TextStyle(fontSize: 100,color: Colors.white),),
          ElevatedButton(onPressed: (){
            m();
          }, child: Text("data"))
        ],
      )),
    ),
    );
  }
}
class sen extends StatefulWidget {
  const sen({super.key});

  @override
  State<sen> createState() => _senState();
}

class _senState extends State<sen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    Container(
      color: Color.fromARGB(255, 11, 2, 75),
      child: Center(child: Text("2",style: TextStyle(fontSize: 100,color: Colors.white),)),
    ),
    );
  }
}
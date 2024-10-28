import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fdsa(),
  ));
}

class fdsa extends StatefulWidget {
  const fdsa({super.key});

  @override
  State<fdsa> createState() => _fdsaState();
}

class _fdsaState extends State<fdsa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Tabbar",
              style: TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
            )),
            backgroundColor: Colors.blue,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.call_made),
                text: "calls",
              ),
              Tab(
                icon: Icon(Icons.call_missed),
                text: "liked",
              ),
              Tab(
                icon: Icon(Icons.remove_done),
                text: "remove",
              ),
              
            ]),
          ),
          body: TabBarView(children: [bir(), ikki(), uch(), ]),
        ));
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
    return Scaffold(backgroundColor: Color.fromARGB(255, 36, 34, 34),
      body: Center(child: Text("ONE",style: TextStyle(fontSize: 100,color: Colors.white),)),
    );
  }
}



class ikki extends StatefulWidget {
  const ikki({super.key});

  @override
  State<ikki> createState() => _ikkiState();
}

class _ikkiState extends State<ikki> {
  List non=[
   men(
    la: "p",
    Ismi: "Pratap Kumar",
    email: "pratap@example.com",
   ),
   men(
    la: "j",
    Ismi: "Jagadeesh",
    email: "jagadeesh@example.com",
   ),
   men(
    la: "s",
    Ismi: "Srinivas",
    email: "srinivas@example.com",
   ),
   men(
    la: "n",
    Ismi: "Notendra",
    email: "notendra@example.com",
   ),
   men(
    la: "s",
    Ismi: "Sravan",
    email: "sravan@example.com",
   ),
   men(
    la: "r",
    Ismi: "Ranganadh",
    email: "rangadh@example.com",
   ),
   men(
    la: "k",
    Ismi: "Karthik",
    email: "karthik@example.com",
   ),
   men(
    la: "s",
    Ismi: "Saranya",
    email: "saranya@example.com",
   ),
   men(
    la: "m",
    Ismi: "Mahesh",
    email: "mahesh@example.com",
   ),
  ];
  Widget templete (tab12){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: CircleAvatar(
           radius: 35,
           backgroundColor: Color.fromARGB(255, 40, 36, 94),
           child: Center(child: Text(tab12.la,style: TextStyle(fontSize: 30,color: Colors.white),)),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tab12.Ismi,style: TextStyle(fontSize: 20,color: Colors.white),),
            Text(tab12.email,style: TextStyle(color: Colors.white),),
          ],
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 36, 34, 34),
    body: SingleChildScrollView(
      child: Column(
        children: non.map((e) => templete(e)).toList()
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
  List inm=[
    men(
      mfe: "r",
      re: "Rikki",
      em: "rikki@explore.com"
    ),
     men(
      mfe: "m",
      re: "Mukrasi",
      em: "mukrasi@explore.com"
    ),
    men(
      mfe: "l",
      re: "Lily",
      em: "lily@explore.com"
    ),
  ];
 Widget templet (nom11){
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Color.fromARGB(255, 40, 36, 94),
          child: Center(child: Text(nom11.mfe,style: TextStyle(fontSize: 30,color: Colors.white),)),
        ),
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nom11.re,style: TextStyle(fontSize: 20,color: Colors.white)),
          Text(nom11.em,style: TextStyle(color: Colors.white))
        ],
      )
    ],
  );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 36, 34, 34),
      body: Column(
        children: inm.map((e) => templet(e)).toList()
      ),
    );
  }
}
class men{
  String? la;
  String? Ismi;
  String? email;
  String? re;
  String? em;
  String? mfe;
  men({this.Ismi,this.email,this.la,this.em,this.re,this.mfe});
}
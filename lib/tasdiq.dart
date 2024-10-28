import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dog(),
  ));
}

class dog extends StatefulWidget {
  const dog({super.key});

  @override
  State<dog> createState() => _dogState();
}

class _dogState extends State<dog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("bajarilsinmi"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close)),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ikki()));
                  },
                  child: Icon(Icons.done))
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(child: Text("Flutter",style: TextStyle(fontSize: 50,color: Colors.white),)),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/human.jpg"),fit: BoxFit.cover)),
      )
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
    return Scaffold(
      body: ElevatedButton(onPressed: () {}, child: Text("next")),
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 74, 9, 86),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              background: Image(image: AssetImage("rasm/o.jpg"),fit: BoxFit.cover,),
            ),

          ),
          SliverList(delegate: SliverChildBuilderDelegate((BuildContext context,int index){
            return ListTile(title: Container(color: const Color.fromARGB(255, 7, 45, 77), width: 300,height: 60,child: Center(child: Text("$index",style: TextStyle(color: Colors.white,fontSize: 30),)),),);
          },childCount: 51))
        ],
      ),
    );
  }
}

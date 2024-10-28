import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flu(),
    )
  );
}
class flu extends StatefulWidget {
  const flu({super.key});

  @override
  State<flu> createState() => _fluState();
}

class _fluState extends State<flu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 1; i < 1000; i++)
          if (i % 2 == 0)

          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
              color: Colors.blue,
              child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
            ),
          )else if(i ==3 )
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 150,
                color: Color.fromARGB(255, 249, 1, 1),
                child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
              ),
          )
         
         else if(i ==10 )
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 150,
                color: Color.fromARGB(255, 249, 1, 1),
                child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
              ),
          )

           else if(i ==13 )
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 150,
                color: Color.fromARGB(255, 249, 1, 1),
                child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
              ),
          )
          else if(i ==15 )
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 150,
                color: Color.fromARGB(255, 249, 1, 1),
                child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
              ),
          )


          else  Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
              color: Color.fromARGB(255, 217, 232, 7),
              child: Center(child: Text("$i",style: TextStyle(fontSize: 30),)),
            ),
          )
        ],
      ),
    );
  }
}
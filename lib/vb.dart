import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: scaff(),
  ));
}

class scaff extends StatefulWidget {
  const scaff({super.key});

  @override
  State<scaff> createState() => _scaffState();
}

class _scaffState extends State<scaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Text("Lets star journey, enjoy",style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
            Text("Beatifull Movement of life ",style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 60,
              child: Center(child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bir(),));
              },  child: Text("Strat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50),),color: Colors.white),
            ),
            SizedBox(height: 30,),
            Text("Don`t have account",style: TextStyle(color: Colors.white,),)
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("rasm/human.jpg"),fit: BoxFit.cover)),
      ),
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
      body: Center(
        child: Container(width: 48,
        height: 32,color: Colors.red,),
      ),
    );
  }
}
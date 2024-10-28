import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: "es",
     routes :{
      "es":(((context) => sdf())),
      "as":(((context) => asosiyclass())),
      "ee":(((context) => birclass())),
     }
    )
  );
}
class sdf extends StatefulWidget {
  const sdf({super.key});

  @override
  State<sdf> createState() => _sdfState();
}

class _sdfState extends State<sdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, "as");
        }, child: Text("2ga o`tish"),),
      ),
    );
  }
}




class asosiyclass extends StatefulWidget {
  const asosiyclass({super.key});

  @override
  State<asosiyclass> createState() => _asosiyclassState();
}

class _asosiyclassState extends State<asosiyclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "ee");
      }, child: Text("3ga o`tish")),
    );
  }
}





class birclass extends StatefulWidget {
  const birclass({super.key});

  @override
  State<birclass> createState() => _birclassState();
}

class _birclassState extends State<birclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(child: Text("3 - sahifa"),),backgroundColor: Colors.red,
    );
  }
}
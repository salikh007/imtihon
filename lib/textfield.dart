
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flutt(),
    )
  );
}
class flutt extends StatefulWidget {
  const flutt({super.key});

  @override
  State<flutt> createState() => _fluttState();
}

class _fluttState extends State<flutt> {
  TextEditingController vii = TextEditingController();
  String z = "";
  void non(){
    setState(() {
      z = vii.text;
    });
  }



  TextEditingController vav = TextEditingController();
  String b = "";
  String a = "";
  

  
 void funktion (){
    setState(() {
      nom = vav.text;
    });





  }
  String nom = "";
  String nom2 = "salom";
  void nomf (){
    setState(() {
      if(nom == "dushanba"){
      nom2 = "monday";
      }else if(nom == "seshanba"){
        nom2 = "tuesday";
      }
      else if(nom == "chorshanba"){
        nom2 = "wednesday";
      }
      else if(nom == "payshanba"){
        nom2 = "thursday";
      }
      else if(nom == "juma"){
        nom2 = "fiday";
      }
      else if(nom == "shanbi"){
        nom2 = "saturday";
      }
      else if(nom == "yakshanba"){
        nom2 = "sunday";
      }
      else {
        nom2 = "bunday kun yo`q";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text(nom2)),backgroundColor: Colors.yellow,),
      body: Column(
        children: [
          TextField(
            controller: vav,
            
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                a = value;
              });
            },
          ),
          Text(a),
          TextField(   
            controller: vii,
            textInputAction: TextInputAction.next,
          ),
          Text(z)
        ],
      ),
   floatingActionButton: FloatingActionButton(onPressed: (){
    funktion();  
    nomf();
    non();
   }),
    );
  }
}
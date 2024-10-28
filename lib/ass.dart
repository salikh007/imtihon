import 'package:flutter/material.dart';
void main(){
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: df(),),
  );
  
}
class df extends StatefulWidget {
  const df({super.key});

  @override
  State<df> createState() => _dfState();
}

class _dfState extends State<df> {
 List nom=["salom","hayr","hamma","gridview","fds","terak","meva","uzm","fazo","yurak"];
Widget nomtemplate(salom){return Container(color: Colors.red, child: Center(child: Text(salom)));}
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/car.jpg"),fit: BoxFit.cover)),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
        children: nom.map((e) => nomtemplate(e)).toList()
        ),
      ),
      
    );
  }
}
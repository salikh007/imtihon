import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fkh(),
  ));
}

class fkh extends StatefulWidget {
  const fkh({super.key});

  @override
  State<fkh> createState() => _fkhState();
}

class _fkhState extends State<fkh> {
  TextEditingController input = TextEditingController();
  String matn = "";
  String mnt = "";
  void nom() {
    setState(() {
      if (input.text == "sariq") {
        nom1 = Colors.yellow;
        matn = "yellow";
        
      } else if (input.text == "yashil") {
         nom1 = Colors.green;
        matn = "green";
       
      } else if (input.text == "qizil") {
         nom1 = Colors.red;
        matn = "red";
       
      } else if (input.text == "jigarrang") {
        nom1 = Colors.brown;
        matn = "brown";
        
      } else if (input.text == "siyohrang") {
        nom1 = Colors.purple;
        matn = "purple";
        
      } else {
        mnt = "rasm/human.jpg";
      }
    });
  }

  Color nom1 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 217, 139),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            child: Center(child: Text(matn)),
            decoration: BoxDecoration(
              color: nom1,
              image: DecorationImage(image: AssetImage(mnt), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  nom();
                },
                icon: Icon(Icons.search),
              ),
            ),
            controller: input,
            textInputAction: TextInputAction.next,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stnake(),
  ));
}

class stnake extends StatefulWidget {
  const stnake({super.key});

  @override
  State<stnake> createState() => _stnakeState();
}

class _stnakeState extends State<stnake> {
  void nom89() {
    final SnackBarq = SnackBar(
      content: Row(
        children: [
          Icon(Icons.people,color: Colors.white,),
          Column(
            children: [
              Text("malumotlar",style: TextStyle(color: Colors.white),),
                            Text("malumotlar",style: TextStyle(color: Colors.white),),
            ],
          ),
        ],
      ),
      duration: Duration(seconds: 5),
      action: SnackBarAction(label: "tasdiqlash", onPressed: () {print("tasdiqlandi");}),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBarq);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {nom89();},
          child: Container(
            child: Center(
                child: Text(
              "open snackbar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            width: 170,
            height: 60,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

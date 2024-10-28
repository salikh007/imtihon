import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: chit(),
  ));
}

class chit extends StatefulWidget {
  const chit({super.key});

  @override
  State<chit> createState() => _chitState();
}

class _chitState extends State<chit> {
  List nom = [
    mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
     mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ), mosque(
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
  ];
  Widget der (stf) {
    return Container(
    width: double.infinity,
    height: 200,
    color: Color.fromARGB(255, 36, 102, 74),
    child: Column(
      children: [
        Text(stf.ism),
        Text(stf.tel),
        Text(stf.manzil),
        Icon(Icons.star_border)
      ],
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 194, 187, 145),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage("rasm/car.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("rasm/food.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("rasm/sabzi.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView(
                    children: nom.map((e) => der(e)).toList()
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}

class mosque {
  String? ism;
  String? tel;
  String? manzil;
  String? Icon;
  mosque({this.ism, this.tel, this.manzil, this.Icon});
}

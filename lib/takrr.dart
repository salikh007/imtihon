import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: web(),
  ));
}

class web extends StatefulWidget {
  const web({super.key});

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  List nom = [
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
      
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    ),
    mosque(
      rasm: "rasm/mosquhd.jpg",
      ism: "muhammadsolih",
      tel: "998908970777",
      manzil: "ATX.xuqandiy 149/9",
    )
  ];
  Widget nil(hil77) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(hil77.rasm), fit: BoxFit.cover),
      ),
      child: Center(
        child: Container(
          color: const Color.fromARGB(255, 43, 17, 7),
          width: 150,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                hil77.ism,
                style: TextStyle(color: Colors.white),
              ),
              Text(hil77.tel, style: TextStyle(color: Colors.white)),
              Text(hil77.manzil, style: TextStyle(color: Colors.white)),
              Icon(Icons.phone,color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "MOSQUE",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 4, 30, 51),
      ),
      body: Container(width: double.infinity,height: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/mosque.jpg"),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: const Color.fromARGB(255, 80, 17, 13),
                child: Center(
                  child: Icon(
                    Icons.mosque,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 30),
                      children: nom.map((e) => nil(e)).toList()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mosque {
  String? rasm;
  String? ism;
  String? tel;
  String? manzil;
  String? Icon;
  mosque({
    this.rasm,
    this.ism,
    this.tel,
    this.manzil,
    this.Icon
  });
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: uhfu(),
  ));
}

class uhfu extends StatefulWidget {
  const uhfu({super.key});

  @override
  State<uhfu> createState() => _uhfuState();
}

class _uhfuState extends State<uhfu> {
  List nom = [
    oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9"), oddiy(
        rasm: "rasm/images.png",
        ism: "Muhammadsolih",
        tel: "908970777",
        manzil: "Atx.xoqandiy 149/9")
  ];
      
  Widget templetee(nom1) {
    return Container(padding: EdgeInsets.only(top: 10),
      width: 250,
      height: 100,
      color: Colors.yellow,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(backgroundImage: AssetImage(nom1.rasm),),
              Text(nom1.tel),
              Text(nom1.manzil),
            ],
          ),
          Text(nom1.ism),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("USER")),
      ),
      body: Column(
        
        children: [
          Expanded(
            child: Container(width: double.infinity,
            height: 500,
            color: Colors.blue,
             child: GridView (children: nom.map((e) => templetee(e)).toList(), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,mainAxisExtent: 100),)),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 172, 142, 152),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 197, 163, 174),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 150, 126, 134),
                ),
              ],
            ),
            width: double.infinity,
            height: 150,
            color: Colors.red,
          )
        ],
      ),
      
    );
  }
}

class oddiy {
  String? rasm;
  String? ism;
  String? tel;
  String? manzil;
  oddiy({this.rasm, this.ism, this.tel, this.manzil});
}

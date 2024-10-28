import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: car(),
    )
  );
}
class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}


class _carState extends State<car> {
  List nomlist =[
  oddiy(
    rasm: "rasm/car.jpg",
    ism: "muhammadsolih",
    familya: "abdulhamidov",
    yosh: "14",
    tel: "908970777",
    manzil: "ATX/Xuqandiy.149/9",
    
  ),
   oddiy(
    rasm: "rasm/daraxt.jpg",
    ism: "muhammadrizo",
    familya: "abdulhamidov",
    yosh: "24",
    tel: "908978948",
    manzil: "ATX/Xuqandiy.34/1",
    
  ), oddiy(
    rasm: "rasm/ferrari.jpg",
    ism: "muhammadnumon",
    familya: "abdulhamidov",
    yosh: "23",
    tel: "908908777",
    manzil: "ATX/Xuqandiy.149/9",
   
  ),
  oddiy(
    rasm: "rasm/nexia.jpg",
    ism: "fazlulloh",
    familya: "abdulhamidov",
    yosh: "15",
    tel: "908972137",
    manzil: "uchko`prik",
    
  ),
   oddiy(
    rasm: "rasm/o.jpg",
    ism: "fotima",
    familya: "abdulhamidov",
    yosh: "19",
    tel: "908990877",
    manzil: "Marg`ilon",
    
  ), oddiy(
    rasm: "rasm/d.png",
    ism: "umar",
    familya: "qoraboyev",
    yosh: "14",
    tel: "908467777",
    manzil: "quqonboy",
   
  ),
  oddiy(
    rasm: "rasm/sabzi.jpg",
    ism: "salmonhon",
    familya: "usmonov",
    yosh: "18",
    tel: "908596777",
    manzil: "ATX/Xuqandiy.150/9",
    
  ),
   oddiy(
    rasm: "rasm/food.jpg",
    ism: "zayd",
    familya: "abdulhamidov",
    yosh: "5",
    tel: "908956777",
    manzil: "ATX/Xuqandiy.149/9",
    
  ), oddiy(
    rasm: "rasm/sweden.jpg",
    ism: "ibrohim",
    familya: "abdulhamidov",
    yosh: "15",
    tel: "908970189",
    manzil: "shvetsiya",
    
  ),
   oddiy(
    rasm: "rasm/temur.jpg",
    ism: "sayfulloh",
    familya: "abdulhamidov",
    yosh: "25",
    tel: "908934577",
    manzil: "ATX/Xuqandiy.149/9",
   
  ),
];







List i=[
  oddiy(
    ism: "Muhammadsolih",
    daromad: "0000000000",
    ishjoyi: "ishlamaydi o`qiydi",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
  ),
  oddiy(
     ism: "Muhammadrizo",
     daromad: "10 000 000 so`m",
    ishjoyi: "LARGO",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
  ),
  oddiy(
    ism: "Muhammadnumon",
    daromad: "ishga qarab",
    ishjoyi: "moshina savdo",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
  ),
  oddiy(
    ism: "Fazlulloh",
    daromad: "2 000 000",
    ishjoyi: "Sadaf sut",
    onasiniismi: "Sanobarxon",
    otasiniismi: "Mujohidxon"
  ),
  oddiy(
    ism: "fotima",
    daromad: "0000000000",
    ishjoyi: "ishlamaydi uy begasi",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
  ),
  oddiy(
    ism: "umar",
     daromad: "1 500 000",
    ishjoyi: "Sadaf sut",
    onasiniismi: "Mufazzalxon",
    otasiniismi: "Muhammadxon"
  ),
 oddiy(
  ism: "salmonhon",
  daromad: "kuniga 300 ming so`m tahmiiniy hisob ",
    ishjoyi: "somsapaz",
    onasiniismi: "Marziyahon",
    otasiniismi: "----------"
 ),
 oddiy(
  ism: "zayd",
  daromad: "0000000000",
    ishjoyi: "ishlamaydi hali yosh",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
 ),
 oddiy(
  ism: "ibrohim",
  daromad: "0000000000",
    ishjoyi: "ishlamaydi o`qiydi",
    onasiniismi: "Zoxidaxon",
    otasiniismi: "Axmadxon"
 ),
 oddiy(
  ism: "sayfulloh",
 daromad: "0000000000",
    ishjoyi: "ishlamaydi ",
    onasiniismi: "Maxmudaxon",
    otasiniismi: "MuhammadAli"
 ),
 
];
 Widget ikra (i) {
return InkWell(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sol(s: i,),));
    },
  child:  Container(
    width: 200,
    height: 50,
    decoration: BoxDecoration(color: const Color.fromARGB(255, 4, 39, 5),borderRadius: BorderRadius.all(Radius.circular(30))),
  ));
 }
Widget olma (u){
    return InkWell(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => sol(s: u,),));
    },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(u.rasm),fit: BoxFit.cover)),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: nomlist.map((e) => olma(e)).toList()
      ),
    );
  }
}
class sol extends StatelessWidget {
  final oddiy s;
  const sol({super.key, required this.s});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 40, 10),
      ),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/car.jpg",),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 250,left: 200),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 12, 47, 13),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(s.ism!,style: TextStyle(color: Colors.white,fontSize: 25),),
                           Text(s.familya!,style: TextStyle(color: Colors.white,fontSize: 25),),
                           Text(s.yosh!,style: TextStyle(color: Colors.white,fontSize: 25),),
                           Text(s.tel!,style: TextStyle(color: Colors.white,fontSize: 25),),
                           Text(s.manzil!,style: TextStyle(color: Colors.white,fontSize: 25),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),
               InkWell(onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => sil()));
               },
                 child: Container(
                  child: Center(child: Text("Batafsil malumot",style: TextStyle(color: Colors.white),)),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 3, 50, 5),borderRadius: BorderRadius.all(Radius.circular(30))),
                 ),
               )
              ],
            ),
            
          ),
          
        ),
        
      ),
    );
  }
}
class sil extends StatelessWidget {
  const sil({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 224, 7),
                borderRadius: BorderRadius.all(Radius.circular(60)),
                border: Border.all(color: Colors.red,style: BorderStyle.solid)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("s.daromad",style: TextStyle(fontSize: 30),),
                  Text("s.ishjoyi",style: TextStyle(fontSize: 30),),
                  Text("s.otasiniismi",style: TextStyle(fontSize: 30)),
                  Text("s.onasiniismi",style: TextStyle(fontSize: 30))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class oddiy {
  String? rasm;
  String? ism;
  String? familya;
  String? yosh;
  String? tel;
  String? manzil;
  String? daromad;
  String? ishjoyi;
  String? otasiniismi;
  String? onasiniismi;
  oddiy({this.rasm,this.familya,this.ism,this.manzil,this.tel,this.yosh,this.daromad,this.ishjoyi,this.onasiniismi,this.otasiniismi,});
}
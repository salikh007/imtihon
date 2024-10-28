import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: asdf(),
  ));
}

class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {
  List  nom=[
    "ALLOH",
"AR ROHMAN",
    "AR ROHIM",
    "AL MALIK",
    "AL QUDDUS",
    "AS SALAM",
    "Al-Mumin",
    'Al-Muhaymin',
    "Al-Aziz",
    "Al-Jabbar",
    "Al-Mutakabbir",
    "Al-Holiq",
    "Al-Bāri",
    "Al-Musovvir",
    " Al-G'offār ",
    "Al-Qohhar",
    "Al-Vahhab",
    "Al-Rozzaq",
    "Al-Fattah",
    "Al-Aliym",
    "Al-Qobiz",
    "Al-Hofiz",
    "Al-Rofi",
    "Al-Mu'izz",
    " Al-Muzill",
    "Al-Sami'",
    "Al-Basir",
    "Al-Hakam",
    "Al-Adl...",
    " Al-Latiyf",
    "Al-Hobiyr ",
    "Al-Haliym",
    "Al-Aziym",
    "Ash-Shakur",
    "Al-Aliyy",
    "Al-Kabiyr ",
    "Al-Hafiz",
    "Al-Muqiyt.. ",
    "Al-Hasib ",
    "Al-Jaliyl",
    "Al-Kariym",
    " Ar-Roqiyb",
    "Al-Mujiyb",
    "Al-Vasi'",
    "Al-Hakiym",
    "Al-Vadud",
    " Al-Majiyd ",
    "Al-Ba'is...",
    "Ash-ShahiY",
    "Al-Haqq",
    "Al-Vakiylu",
    "Al-Qoviyyu ",
    " Al-Matiynu",
    " Al-Valiyy",
    "Al-Hamiyd",
    "Al-Muhsiy",
    "Al-Mubdiu",
    "Al-Mu'iyd...",
    " Al-Muhiy",
    "Al-Mumiyt",
    "Al-Hayyu",
    "Al-Qoyyumu",
    "Al-Vajidu",
    "Al-Majidu ",
    "Al-Vahidu",
    "As-Somadu",
    "Al-Qodiru",
    "Al-Muqtadir...",
    "Al-Muqoddim",
    "Al-Muahirr",
    " Al-Avval ",
    " Al-Ahiru",
    "Az-Zohiru",
    "Al-Batin",
    " Al-Vali",
    "Al-Muta'aliy",
    "Al-Barr",
    "At-Tavvab...",
    " Al-Muntaqim ",
    "Al-Afuvv",
    "Ar-Rouf",
    "Malikul Mulk",
    "Zul Jalol Val Ikrom",
    "Al-Muqsidu",
    "Al-Jami'u ",
    " Al-G'oniyyu",
    "Al-Mug'niy",
    "Al-Mani'u..",
    "Az-Zorru ",
    "An-Nafi'y",
    "An-Nur",
    "Al-Hadiy",
    "Al-Badi'",
    "Al-Baqiy",
    " Al-Varis ",
    "Ar-Roshiyd ",
    "As-Sobur!!!!",
  ];
  Widget template(nom1){
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Center(
       child: Container(
        width: 300,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Center(child: Text(nom1)),
        
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
            "Allohning 99 ismi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/mosque.jpg"),fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: nom.map((e) => template(e)).toList()
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: alloh(),
  ));
}

class alloh extends StatefulWidget {
  const alloh({super.key});

  @override
  State<alloh> createState() => _allohState();
}

class _allohState extends State<alloh> {
  List noy = [
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
    "Al-G'offār ",
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
    "Al-Latiyf",
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
    "Ar-Roqiyb",
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
    "Al-Matiynu",
    "Al-Valiyy",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.mosque_outlined,
            color: Colors.white,
          )
        ],
        leading: Icon(
          Icons.mosque_outlined,
          color: Colors.white,
        ),
        title: Center(
            child: Text(
          "Allohning ismlari",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 2, 14, 25),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/mosquhd.jpg"),fit: BoxFit.cover)),
        child: GridView(
            children: noy.map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 50,height: 50,color: const Color.fromARGB(255, 4, 17, 4), child: Center(child: Text(e,style: TextStyle(color: Colors.white,fontSize: 30),))),
            )).toList(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount  (crossAxisCount: 2, crossAxisSpacing: 100, mainAxisSpacing: 50)
                ),
      ),
    );
  }
}

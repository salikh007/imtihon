import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: achki(),
  ));
}

class achki extends StatefulWidget {
  const achki({super.key});

  @override
  State<achki> createState() => _achkiState();
}

class _achkiState extends State<achki> {
  List nom = [
    "rasm/car.jpg",
    "rasm/images.jpg",
    "rasm/o.jpg",
    "rasm/cr7.jpg",
    "rasm/human.jpg",
  ];
  Widget yukabid(okeey) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Colors.blue, width: 3),
            image:
                DecorationImage(image: NetworkImage(okeey), fit: BoxFit.cover)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(image: AssetImage("rasm/images.png")),
                border: Border.all(color: Colors.blue, width: 2)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Muhammad solih",
              style: TextStyle(color: Colors.white),
            ),
            Text("90 897-07-77", style: TextStyle(color: Colors.white))
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 99, bottom: 30),
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.airplanemode_active_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.blender_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: nom.map((e) => yukabid(e)).toList()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: 430,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                "Abonent to`lovi to`lanmagan ",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Sizning balansingizda ZO`R 10 30% tarif rejasi",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "boyicha abonent to`lovi yechish uchun",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "mablaq` yetarli emas ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Container(
                                width: 370,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 50,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 75),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:
                                            Icon(Icons.account_balance_wallet),
                                      ),
                                    ),
                                    Text(
                                      "Balansni to`ldirish",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Container(
                                width: 370,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 69, 67, 67),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                height: 50,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 75),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.access_time,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "ishonchli to`lov",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 46, 45, 45),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 35),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Balans",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "918",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "so`m",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: 120,
                                      child: Center(
                                          child: Text(
                                        "To`ldirish",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 69, 67, 67),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 46, 45, 45),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tarif",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ZO`R 10 30%",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 260,
                            height: 1,
                            color: const Color.fromARGB(255, 66, 64, 64),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Keyingi to`lov",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "24 may, 44 500 so`m",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          )
                        ],
                      ),
                    ),
                    width: 260,
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 45, 45),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5.3 GB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "ta`rif bo`yicha",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "5 oktabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2.8 GB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "bonus paket",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "14 sentabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50 MB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "internet-paket",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "10 sentabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "45",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "bonus ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "10 sentabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "500 SMS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "ta`rif bo`yicha",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "5 oktabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "210 SMS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "bonus",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "14 sentabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "bonus paketi",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "13 sentabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cheksiz",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "ta`rif bo`yicha",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "5 oktabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "12.0 GB",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "tungi paket",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  "5 oktabr gacha",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                width: 430,
                height: 130,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 46, 45, 45),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      Text(
                        "Barcha qoldiqlarni ko`rish",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        ">",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      )
                    ],
                  ),
                )),
                width: 430,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 46, 45, 45),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Ommabop",
                style: TextStyle(
                    color: const Color.fromARGB(255, 81, 81, 81),
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Internet-",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "paketlari",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("rasm/car.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chegirmalar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 96),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Tariflar",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "Beeclup",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("rasm/nexia.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "barcha xizmatlar",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("rasm/human.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Youtube",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 96),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "uchun",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "trafiklari",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("rasm/food.jpg"),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.interests_outlined,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Chegirmalar",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.airplanemode_active,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Rouming",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 245),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Barcha xizmatlar",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.connected_tv,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("ulangan xizmatlar",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.build,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("konstruktor tarifi",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(Icons.payment,color: Colors.white,size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("ishonchli to`lov ",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Text(">",
                          style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                        ),
                         Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.swap_horiz,color: Colors.white,size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("trafiklar almashishi",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(left: 240),
                          child: Text(">",
                          style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                        ),
                
                  ],
                ),
                            )
                  ],
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.home,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("telekanallar",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.music_note,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("beegudok",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.apps_outage_rounded,color: Colors.white,size: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("sug`urta",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250),
                        child: Text(">",
                        style: TextStyle(color: Color.fromARGB(255, 86, 84, 84), fontSize: 40),),
                      )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

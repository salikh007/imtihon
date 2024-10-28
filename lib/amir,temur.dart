import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Amir Temur",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  child: Center(
                      child: Text(
                    "Madrasalar",
                    style: TextStyle(color: Colors.white),
                  )),
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  child: Center(
                    child: Text(
                      "O.T.M",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  child: Center(
                      child: Text(
                    "No_O.T.M",
                    style: TextStyle(color: Colors.white),
                  )),
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50,
                          backgroundImage: AssetImage("rasm/temur.jpg"),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50,
                          backgroundImage: AssetImage("rasm/temur.jpg"),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50,
                          backgroundImage: AssetImage("rasm/temur.jpg"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        color: Colors.grey,
                          child: Text(
                        "Amir Temur 1336 yil 9 aprel kuni Kesh (Shahrisabz) yaqinidagi Xo‘ja Ilg‘or (Yakkabog‘) qishlog‘ida tug‘ilgan. Rivoyatlarga ko‘ra, u qo‘lida qip-qizil qon bo‘lagi bilan, sochlari esa mo‘ysafid kabi oppoq holatda tug‘ilgan, bunday holat Chingizxon haqida ham gapirilgan. Uning otasi amir Muhammad Tarag‘ay turk avlodining barloslaridan bo‘lib, Movarounnahrda o‘ziga yarasha obro‘-e’tiborga ega, nufuzli ziyolilardan bo‘lgan. Uning ota-bobosi afsonaviy turkiy Alan quva shajarasidan kelib chiqqan bo‘lib, Chig‘atoy ulusining saroydagi obro‘-e’tiborli kishilari qatoridan joy olgan. Kesh va Nefes atrofidagi yerlar ularga qarashli mulk hisoblangan.",
                        style: TextStyle(backgroundColor: Colors.grey),
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                        backgroundImage: AssetImage("rasm/temur.jpg"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                        backgroundImage: AssetImage("rasm/temur.jpg"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                        backgroundImage: AssetImage("rasm/temur.jpg"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ));
}

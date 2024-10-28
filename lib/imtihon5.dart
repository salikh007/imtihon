import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 10, 17, 100),
            Color.fromARGB(255, 62, 31, 129)
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500,
                height: 300,
                child: Lottie.asset(
                  'lib/lottie/lte.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Weather',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                'ForeCasts',
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 234, 143, 17),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => salikh(),
                      ));
                },
                child: Container(
                  width: 300,
                  height: 70,
                  child: Center(
                      child: Text(
                    "Get Start",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 239, 133, 5),
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

class salikh extends StatefulWidget {
  const salikh({super.key});

  @override
  State<salikh> createState() => _salikhState();
}

class _salikhState extends State<salikh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "North America",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    "Max: 24",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "o",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Min: 18",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
                  child: Text(
                    "o",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 180),
              child: Text(
                "7-Days Forecasts",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "<",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => abdulkhamidoff(),
                            ));
                      },
                      child: Container(
                        width: 100,
                        height: 200,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "19",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Text(
                                    "o",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => abdulkhamidoff(),
                                    ));
                              },
                              child: Container(
                                width: 70,
                                height: 100,
                                child: Lottie.asset(
                                  'lib/lottie/opt.json',
                                ),
                              ),
                            ),
                            Text(
                              "Mon",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 107, 29, 215),
                              Color.fromARGB(255, 109, 67, 201)
                            ]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(70),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => abdulkhamidoff(),
                          ));
                    },
                    child: Container(
                      width: 100,
                      height: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "18",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Text(
                                  "o",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => abdulkhamidoff(),
                                  ));
                            },
                            child: Container(
                              width: 70,
                              height: 100,
                              child: Lottie.asset(
                                'lib/lottie/tle.json',
                              ),
                            ),
                          ),
                          Text(
                            "Tue",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 107, 29, 215),
                            Color.fromARGB(255, 109, 67, 201)
                          ]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(70),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => abdulkhamidoff(),
                            ));
                      },
                      child: Container(
                        width: 100,
                        height: 200,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "18",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Text(
                                    "o",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 70,
                              height: 100,
                              child: Lottie.asset(
                                'lib/lottie/pto.json',
                              ),
                            ),
                            Text(
                              "Wed",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 107, 29, 215),
                              Color.fromARGB(255, 109, 67, 201)
                            ]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(70),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "19",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Text(
                                "o",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 100,
                          child: Lottie.asset(
                            'lib/lottie/lte.json',
                          ),
                        ),
                        Text(
                          "Thu",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 107, 29, 215),
                          Color.fromARGB(255, 109, 67, 201)
                        ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(70),
                        )),
                  ),
                  Text(
                    ">",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 450,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.adjust,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Air Quality",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "3-Low Health Risk",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 43, 48, 104),
                          Color.fromARGB(255, 19, 3, 54)
                        ])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            "see more",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Text(
                              ">",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 107, 29, 215),
                          Color.fromARGB(255, 40, 12, 101)
                        ]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: 30,
                                height: 30,
                                child: Lottie.asset('lib/lottie/etl.json',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "SUNRICE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "5:28 AM",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Sunset: 7.25 PM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 137, 131, 131),
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 107, 29, 215),
                              Color.fromARGB(255, 40, 12, 101)
                            ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: 30,
                                height: 30,
                                child: Lottie.asset('lib/lottie/etl.json',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "UV INDEX",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "4",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "MODERADE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 30),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 107, 29, 215),
                              Color.fromARGB(255, 40, 12, 101)
                            ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(color: Colors.white)),
                  ),
                ],
              ),
            )
          ],
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 10, 17, 100),
          Color.fromARGB(255, 62, 31, 129)
        ])),
      ),
    );
  }
}

class abdulkhamidoff extends StatefulWidget {
  const abdulkhamidoff({super.key});

  @override
  State<abdulkhamidoff> createState() => _abdulkhamidoffState();
}

class _abdulkhamidoffState extends State<abdulkhamidoff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 500,
                height: 170,
                child: Lottie.asset(
                  'lib/lottie/lte.json',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("19", style: TextStyle(fontSize: 50, color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text("o",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                )
              ],
            ),
            Text("Precipitations",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Max: 24",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("o",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Text("Min:18",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("o",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                )
              ],
            ),
            Container(
              width: 400,
              height: 100,
              child: Lottie.asset(
                'lib/lottie/lottie.json',fit: BoxFit.cover
              ),
            ),
            SizedBox(height: 100,),
            Container(
              width: 500,
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Today",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: Text("July, 21",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("19",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("o",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        Text("C",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(
                          width: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("18",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("o",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        Text("C",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(
                          width: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("18",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("o",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        Text("C",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(
                          width: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("18",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("o",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                        Text("C",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Lottie.asset(
                            'lib/lottie/lte.json',
                          ),
                        ),
                        
                      ),
                      SizedBox(width: 60,),
                       Container(
                          width: 50,
                          height: 50,
                          child: Lottie.asset(
                            'lib/lottie/pto.json',
                          ),
                        ),
                        SizedBox(width: 60,),
                       Container(
                          width: 50,
                          height: 50,
                          child: Lottie.asset(
                            'lib/lottie/tle.json',
                          ),
                        ),
                        SizedBox(width: 70,),
                       Container(
                          width: 50,
                          height: 50,
                          child: Lottie.asset(
                            'lib/lottie/etl.json',
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("15.00",style: TextStyle(color: Colors.white,fontSize: 25),),
                      ),
                      SizedBox(width: 50,),
                      Text("16.00",style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(width: 50,),
                      Text("17.00",style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(width: 50,),
                      Text("18.00",style: TextStyle(color: Colors.white,fontSize: 25),)
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 29, 36, 114),
                        Color.fromARGB(255, 57, 8, 100)
                      ])),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 10, 17, 100),
          Color.fromARGB(255, 62, 31, 129)
        ])),
      ),
    );
  }
}
 
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: D(),
  ));
}

class D extends StatefulWidget {
  const D({super.key});

  @override
  State<D> createState() => _DState();
}

class _DState extends State<D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "<-",
          style: TextStyle(fontSize: 30),
        ),
        title: Text(
          "Browse Categories",
          style: TextStyle(fontSize: 30),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Text(
            "All Categories",
            style: TextStyle(fontSize: 20),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 125,
                    height: 128,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings_input_antenna),
                        Text("antenna")
                      ],
                    ),
                  ),
                  Container(
                    width: 125,
                    height: 128,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.water), Text("water")],
                    ),
                  ),
                  Container(
                    width: 125,
                    height: 128,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.fire_extinguisher), Text("bird")],
                    ),
                  ),
                  Container(
                    width: 125,
                    height: 128,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.movie), Text("movie")],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 125,
                        height: 128,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.hot_tub), Text("hot")],
                        ),
                      ),
                      Container(
                        width: 125,
                        height: 128,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.card_giftcard), Text("gift")],
                        ),
                      ),
                      Container(
                        width: 125,
                        height: 128,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.phone), Text("phone")],
                        ),
                      ),
                      Container(
                        width: 125,
                        height: 128,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.landslide), Text("Landslide")],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.bus_alert), Text("bus")],
                            ),
                          ),
                          Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.umbrella),
                                Text("umbrella")
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.mobile_friendly),
                                Text("mobile")
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.train), Text("train")],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 125,
                                height: 128,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.shopping_basket),
                                    Text("basket")
                                  ],
                                ),
                              ),
                              Container(
                                width: 125,
                                height: 128,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Icon(Icons.stop), Text("stop")],
                                ),
                              ),
                              Container(
                                width: 125,
                                height: 128,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Icon(Icons.group), Text("group")],
                                ),
                              ),
                              Container(
                                width: 125,
                                height: 128,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.airplane_ticket),
                                    Text("airplane")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 125,
                                height: 128,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Icon(Icons.playlist_add_circle_sharp), Text("playlist")],
                                ),
                              ),
                               Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.tune), Text("tune")],
                            ),
                          ),
                           Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.tv), Text("TV")],
                            ),
                          ),
                           Container(
                            width: 125,
                            height: 128,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.insert_chart_rounded), Text("increase")],
                            ),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

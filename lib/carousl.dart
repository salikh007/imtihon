import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: misr(),
  ));
}

class misr extends StatefulWidget {
  const misr({super.key});

  @override
  State<misr> createState() => _misrState();
}

class _misrState extends State<misr> {
  List carousellist = [
    "rasm/car.jpg",
    "rasm/pizza.png",
    "rasm/food.jpg",
    "rasm/images.jpg",
    "rasm/cake.png",
    "rasm/cr7.jpg",
    "rasm/nexia.jpg",
    "rasm/o.jpg"
  ];
  Widget temp(smk) {
    return Image.asset(
      smk,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(width: 600,
            height: 200,
              child: CarouselSlider(
                  items: carousellist.map((e) => temp(e)).toList(),
                  options: CarouselOptions(
                      initialPage: 3,
                      viewportFraction: 0.8,
                      autoPlay: true,
                      reverse: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayCurve: Curves.bounceInOut,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      enlargeCenterPage: false,
                      enlargeFactor: 1
                      )),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/car.jpg"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/food.jpg"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/human.jpg"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/pizza.png"),fit: BoxFit.cover,)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/cake.png"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/cr7.jpg"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/nexia.jpg"),fit: BoxFit.cover,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 100,
                    height: 200,   child: Image(image: AssetImage("rasm/o.jpg"),fit: BoxFit.cover,)),
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

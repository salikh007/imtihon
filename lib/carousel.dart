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
    "rasm/images.jpg"
  ];
  Widget temp(smk) {
    return Image.asset(
      smk,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
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
    );
  }
}

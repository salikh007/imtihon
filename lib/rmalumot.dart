import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: j(),
  ));
}

class j extends StatefulWidget {
  const j({super.key});

  @override
  State<j> createState() => _jState();
}

class _jState extends State<j> {
  List nin = [
    C(nod: "ismi", not: "familiyasi", nov: "telefon raqami"),
    C(nod: "farhod", not: "rashidov", nov: "90 876 46 47"),
    C(nod: "laziz", not: "erhinov", nov: "90 876 77 77"),
    C(nod: "vohid", not: "ahmedov", nov: "90 906 46 47"),
    C(nod: "ismi", not: "familiyasi", nov: "telefon raqami"),
    C(nod: "farhod", not: "rashidov", nov: "90 876 46 47"),
    C(nod: "laziz", not: "erhinov", nov: "90 876 77 77"),
    C(nod: "vohid", not: "ahmedov", nov: "90 906 46 47"),
     C(nod: "ismi", not: "familiyasi", nov: "telefon raqami"),
    C(nod: "farhod", not: "rashidov", nov: "90 876 46 47"),
    C(nod: "laziz", not: "erhinov", nov: "90 876 77 77"),
    C(nod: "vohid", not: "ahmedov", nov: "90 906 46 47"),
  ];
  Widget f(C k) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 40,
                  height: 40,
                  child: Image.asset("rasm/car.jpg",fit: BoxFit.cover,),
                ),
                 Text(k.nod ?? ""),
              ],
            ),
           
            Text(k.not ?? ""),
            Text(k.nov ?? "")
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => f(nin[index]),
              childCount: nin.length),
          gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(1, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 2),
                QuiltedGridTile(1, 2),
                 QuiltedGridTile(1, 1),
              ])),
    );
  }
}

class C {
  String? nod;
  String? not;
  String? nov;
  C({this.nod, this.not, this.nov});
}

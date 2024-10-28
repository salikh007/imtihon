import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStaggeredGrid(),
    ),
  );
}

class MyStaggeredGrid extends StatefulWidget {
  const MyStaggeredGrid({Key? key}) : super(key: key);

  @override
  State<MyStaggeredGrid> createState() => _MyStaggeredGridState();
}

class _MyStaggeredGridState extends State<MyStaggeredGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 5,
        crossAxisSpacing: 3,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
           StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.yellow,
              )),
               StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Container(
                color: Color.fromARGB(255, 69, 16, 154),
              )),
               StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.yellow,
              )),
               StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 35, 180, 122),
              )),
               StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 116, 75, 54),
              )),
               StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.red,
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 116, 75, 54),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 240, 84, 5),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 116, 75, 54),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 209, 173, 155),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 67, 54, 116),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(
                color: Color.fromARGB(255, 224, 8, 156),
              )),
              StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                color: Color.fromARGB(255, 28, 144, 45),
              )),
               
              
        ],
      ),
    );
  }
}

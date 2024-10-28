import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: B(),
  ));
}

class B extends StatefulWidget {
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            "gridwiev",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 50,
                  ),
                  Text(
                    "home",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Colors.blue,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 50,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Colors.green,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.alarm,
                    size: 50,
                  ),
                  Text(
                    "alarm",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: const Color.fromARGB(255, 164, 214, 166),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wallet,
                    size: 50,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: const Color.fromARGB(255, 7, 65, 112),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.backup,
                    size: 50,
                  ),
                  Text(
                    "Backup",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Color.fromARGB(255, 8, 133, 118),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book,
                    size: 50,
                  ),
                  Text(
                    "Book",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Color.fromARGB(255, 182, 133, 173),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.photo,
                    size: 50,
                  ),
                  Text(
                    "photo",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Color.fromARGB(255, 99, 8, 88),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.people,
                    size: 50,
                  ),
                  Text(
                    "People",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
              height: 50,
              color: Color.fromARGB(255, 26, 132, 40),
            ),
          ],
        ));
  }
}

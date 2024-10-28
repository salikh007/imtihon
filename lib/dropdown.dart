import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Birinchi(),
    ),
  );
}

class Birinchi extends StatefulWidget {
  const Birinchi({Key? key}) : super(key: key);

  @override
  State<Birinchi> createState() => _BirinchiState();
}

class _BirinchiState extends State<Birinchi> {
  String a = "tanlang";

  TextStyle still = const TextStyle(
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: a,
          items: [
            DropdownMenuItem(
              value: "tanlang",
              child: Text(
                "tanlang",
                style: still,
              ),
            ),
            DropdownMenuItem(
              value: "Salom",
              child: Text(
                "Salom",
                style: still,
              ),
            ),
            DropdownMenuItem(
              value: "Qalesan",
              child: Text(
                "Qalesan",
                style: still,
              ),
            ),
            DropdownMenuItem(
              value: "Tinchmisan",
              child: Text(
                "Tinchmisan",
                style: still,
              ),
            ),
            DropdownMenuItem(
              value: "ZO'RMISAN",
              child: Text(
                "ZO'RMISAN",
                style: still,
              ),
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              a = value!;
            });
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: expect(),
  ));
}
class expect extends StatefulWidget {
  const expect({super.key});

  @override
  State<expect> createState() => _expactState();
}

class _expactState extends State<expect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(backgroundColor: const Color.fromARGB(255, 82, 9, 4),
        
        title: Text("asos"),
        children: [
          TextButton(onPressed: (){}, child: Text("bir")),
          TextButton(onPressed: (){}, child: Text("ikki")),
          TextButton(onPressed: (){}, child: Text("uch")),
        ],
        ),
    );
  }
}

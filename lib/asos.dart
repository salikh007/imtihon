import 'package:flutter/material.dart';
class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TextButton(onPressed: (){Navigator.pushNamed(context, "ikki");}, child: Text("solih")),);
  }
}
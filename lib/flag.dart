import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "avatar",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  backgroundImage: AssetImage("rasm/usa.png"),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  backgroundImage: AssetImage("rasm/arab.png"),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  backgroundImage: AssetImage("rasm/sin.webp"),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  backgroundImage: AssetImage("rasm/sweden.jpg"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 60,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                    backgroundImage: AssetImage("rasm/russia.jpg"),
                  ),
                ),
                CircleAvatar(
            backgroundColor: Colors.black,
            radius: 60,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage("rasm/russia.jpg"),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 60,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage("rasm/arab.png"),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 60,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage("rasm/usa.png"),
            ),
          )
              ],
            ),
          )
        ],
      ),
    ),
  ));
}

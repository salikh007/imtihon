import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 ta ustunli grid
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 50, // 50 ta element
            itemBuilder: (context, index) {
              return buildCard(
                'Person $index',
                'Country $index',
                20 + index,
                '+998 90 123 45 ${index.toString().padLeft(2, '0')}',
                'https://randomuser.me/api/portraits/men/$index.jpg',
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      String name, String address, int age, String phone, String imageUrl) {
    return Card(
      color: Color.fromARGB(255, 90, 88, 88),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("rasm/images.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                       Text(name,style: TextStyle(fontSize: 20),),
                  Divider(color: Colors.black),
                    ],
                  ),
                ),
               
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 200,
              height: 2,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            Text('address: $address',style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text('age: $age',style: TextStyle(fontSize: 20),),
            Spacer(),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 5),
                Text(phone,style: TextStyle(fontSize: 20),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

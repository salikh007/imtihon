import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
        title: Center(child: Text("Pinters+/ UI Sample",style: TextStyle(color: Colors.white),)),
        actions: [Icon(Icons.message,size: 30,color: Colors.white,)],
        backgroundColor: Colors.black,
       ),
       backgroundColor: Colors.black,
       body: Row(
         children: [
           Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 300,
                height: 150,
                child: Image.asset("rasm/car.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 150,
                child: Image.asset("rasm/daraxt.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 150,
                child: Image.asset("rasm/boychechak.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 200,
                child: Image.asset("rasm/food.jpg",fit: BoxFit.cover,),
              ),
            ]
           ),SizedBox(width: 20,),
           Column(
            children: [
              Container(
                width: 300,
                height: 150,
                child: Image.asset("rasm/boychechak.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 200,
                child: Image.asset("rasm/images.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 150,
                child: Image.asset("rasm/nexia.jpg",fit: BoxFit.cover,),
              ),
              Container(
                width: 300,
                height: 170,
                child: Image.asset("rasm/sabzi.jpg",fit: BoxFit.cover,),
              )
            ],
           )
         ],
       ),
      ),
    )
  );
}
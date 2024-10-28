import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             
              child: Icon(Icons.home,size: 100,color: Colors.white,),
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                   margin: EdgeInsets.only(bottom: 20),
                    child: Icon(Icons.search,size: 100,color: Colors.red,),
                    width: 200,
                    height: 200,
                    color: Colors.black,
                  ),
                  Container(
                  
                    child: Icon(Icons.face,size: 100,color: Colors.black,),
                    width: 200,
                    height: 200,
                    color: const Color.fromARGB(255, 45, 69, 46),
                  )
                ],
              ),
            ),
            Container(
            
              child: Icon(Icons.message,size: 100,color: Colors.white,),
              width: 200,
              height: 200,
              color: Color.fromARGB(255, 11, 91, 98),
            ),
            
          ],
        ),
        
      ),
    )
  );
}
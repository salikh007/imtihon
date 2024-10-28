import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Center(child: Text("1")),
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 5,color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                child: Center(child: Text("2")),
                width: 150,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 5,color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Center(child: Text("3")),
                    width: 150,height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 5,color: Colors.red),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Container(
                    child: Center(child: Text("4")),
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 5,color: Colors.red),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Container(
                    child: Center(child: Text("5")),
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 5,color: Colors.red),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Center(child: Text("6")),
                        width: 300,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 5,color: Colors.red),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      Container(
                        child: Center(child: Text("7")),
                        width: 150,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 5,color: Colors.red),
                          borderRadius:BorderRadius.circular(20) 
                        ),
                      )
                      
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Center(child: Text("8")),
                            width: 150,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Colors.red),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          Container(
                            child: Center(child: Text("9")),
                            width: 150,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Colors.red),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          Container(
                            child: Center(child: Text("10")),
                            width: 150,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Colors.red),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Center(child: Text("11")),
                            width: 300,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Colors.red),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
      ),
    )
  );
}
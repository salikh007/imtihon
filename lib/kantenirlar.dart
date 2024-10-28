import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        actions: [Text("data"),Text("data")],
        leading: Text("data"),
        title: Center(child: Text("data")),
        backgroundColor: Colors.red,
        ),
      body: Center(
        child: Container(
          width: 300,
          height: 350,
          color: Colors.red,
          child: Center(
            child: Container(
              width: 250,
              height: 300,
              color: Colors.blue,
              child: Center(
                child: Center(
                  child: Container( 
                    width: 200,
                    height: 250,
                    color: Colors.yellow,
                    child: Center(
                      child: Container(
                      width: 150,
                      height: 200,
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 150,
                          color: Colors.brown,
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 100,
                              color: Colors.pink,
                              child: Center(
                                child: Container(
                                  width: 25,
                                  height: 50,
                                  color: Colors.orange,
                                  child: Center(
                                    child: Container(
                                      width: 12,
                                      height: 25,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Container(
                                          width: 6,
                                          height: 12,
                                          color: Colors.purple,
                                          child: Center(
                                            child: Container(child: Center(child: Text("salom")),
                                              width: 3,
                                              height: 6,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              ),
                          )
                          ),
                        ),
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    )
  );
}
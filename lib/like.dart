import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavDrawerExample(),
    )
  );
}

class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('A'),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('B'),
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: const Text('To page 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: const Text('To page 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: const Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Drawer example'),
      ),
      body: const Center(
        child: Text('Swip or click upper-left icon to see drawer.'),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

// <void> means this route returns nothing.
class _NewPage extends MaterialPageRoute<void> {
  _NewPage(int id)
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Page $id'),
                elevation: 1.0,
              ),
              body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Text',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 10),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Icon(Icons.search, color: Colors.white),
                          Icon(Icons.settings, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage("rasm/car.jpg"),fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 380,height: 100, color: const Color.fromARGB(255, 32, 26, 10), child: Column(
                        children: [
                          Text('Ismi: Oybek',style: TextStyle(color: Colors.white,fontSize: 20),),
                          Text('Tel: 90-333-89-98',style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text('Manzil: Kokand',style: TextStyle(color: Colors.white,fontSize: 20),),
                      
                        ],
                      )),
                      
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
                ],
              ),
              
              
            ],
          ),
        ),
      );
          },);
  }
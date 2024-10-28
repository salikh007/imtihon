import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Misr(),
  ));
}

class Misr extends StatefulWidget {
  const Misr({super.key});

  @override
  State<Misr> createState() => _MisrState();
}

class _MisrState extends State<Misr> {
  final List<Map<String, dynamic>> carouselList = [
    {
      "image": "rasm/blq.jpg",
      "texts": ["Get special discount", "up to 30%", "Claim voucher"]
    },
    {
      "image": "rasm/tayoq.jpg",
      "texts": ["Limited time offer", "up to 50%", "Claim voucher"]
    }
  ];

  List<mosque> nom = [
    mosque(rasm: "rasm/baliqguruch.jpg", ism: "Salmon Roll", tel: "\$ 22.50"),
    mosque(rasm: "rasm/shushi.jpg", ism: "Dragon Roll", tel: "\$ 25.00"),
    mosque(rasm: "rasm/sushi4.jpg", ism: "Tuna Sashimi", tel: "\$ 30.00"),
    mosque(rasm: "rasm/sepkil.jpg", ism: "Spicy Tuna Roll", tel: "\$ 23.50"),
    mosque(rasm: "rasm/sushi5.jpg", ism: "California Roll", tel: "\$ 18.00"),
    mosque(rasm: "rasm/sudhif.jpg", ism: "Salmon Roll", tel: "\$ 23.50"),
    mosque(rasm: "rasm/b.jpg", ism: "burger", tel: "\$ 5.50"),
    mosque(rasm: "rasm/food.jpg", ism: "stake", tel: "\$ 20.50"),
  ];

  List<mosque> filteredItems = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredItems = nom;
    searchController.addListener(() {
      filterItems();
    });
  }

  void filterItems() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredItems = nom.where((item) {
        return item.ism!.toLowerCase().contains(query);
      }).toList();
    });
  }

  Widget nil(mosque hil77) {
    return GestureDetector(
      onTap: () {
        if (hil77.ism == "Salmon Roll") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage1()),
          );
        } else if (hil77.ism == "Dragon Roll") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage2()),
          );
        } else if (hil77.ism == "Tuna Sashimi") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage3()),
          );
        } else if (hil77.ism == "Spicy Tuna Roll") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage4()),
          );
        } else if (hil77.ism == "California Roll") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage5()),
          );
        } else if (hil77.ism == "Salmon Roll") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage6()),
          );
        } else if (hil77.ism == "burger") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage6()),
          );
        } else if (hil77.ism == "stake") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EmptyPage6()),
          );
        }
      },
      child: Container(
        width: 150,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(hil77.rasm!, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 10),
            Text(
              hil77.ism!,
              style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Text(
                    hil77.tel!,
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      child: Icon(Icons.shopping_cart,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imagePath, List<String> texts) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: texts.map((text) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active_sharp),
          )
        ],
        leading: Icon(Icons.menu),
        title: Center(
          child: Column(
            children: [
              Text(
                "Location",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    Text(
                      "Uzbekiston",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
              items: carouselList.map((item) {
                return buildImage(item["image"]!, item["texts"]!);
              }).toList(),
              options: CarouselOptions(
                initialPage: 0,
                viewportFraction: 0.8,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search your food...',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Food",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 52, 52, 52)),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                children: filteredItems.map((e) => nil(e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class mosque {
  String? rasm;
  String? ism;
  String? tel;
  mosque({
    this.rasm,
    this.ism,
    this.tel,
  });
}

// Bo'sh sahifalar
class EmptyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/baliqguruch.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Original Sushi",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 22.50",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 22.50",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmptyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/shushi.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Dragon Roll",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 25.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 25.00",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmptyPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/sushi4.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Tuna Sashimi",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 30.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 30.00",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmptyPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => hhh(),));
            },
              child: Container(
                  width: 400,
                  height: 200,
                  child: Image.asset(
                    "rasm/sepkil.jpg",
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Spicy Tuna Roll",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 23.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 23.00",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: Center(
                          child: Text(
                        "Plase Order",
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmptyPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/sushi5.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "California Roll",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.7"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 18.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 18.00",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmptyPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/sudhif.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Original Sushi",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 23.50",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 23.50",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class fvf extends StatefulWidget {
  const fvf({super.key});

  @override
  State<fvf> createState() => _fvfState();
}

class _fvfState extends State<fvf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/b.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "Burger",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.8"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 5.50",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 5.50",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Detail")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
                width: 400,
                height: 200,
                child: Image.asset(
                  "rasm/food.jpg",
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "stake",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 220,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.6"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("rasm/baliq.jpg")),
                ),
                Text("Salmon"),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/guruch.jpg")),
                Text("Sushi Rice "),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("rasm/pepsi.jpg")),
                Text("pepsi"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "\$ 20.50",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "- 1 +",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "About Sushi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Sushi is a Japanese dish of prepared vinegared rice (sushi-meshi), usually with some sugar and salt, plus a variety of ingredients such as vegetables, and",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "\$ 20.50",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => hhh(),
                            ));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Plase Order",
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text("Total price"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class hhh extends StatefulWidget {
  const hhh({super.key});

  @override
  State<hhh> createState() => _hhhState();
}

class _hhhState extends State<hhh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 249, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 249, 249),
        title: Center(child: Text("Your cart food")),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Row(
                children: [
                  Container(
                      width: 130,
                      height: 130,
                      child: Image.asset("rasm/sushi5.jpg")),
                  Column(
                    children: [
                      Text(
                        "Orginal Sushi",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "\$ 26.00",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 80),
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(fontSize: 10),
                      )),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 80),
                    child: Text("1 +"),
                  )
                ],
              ),
              width: 400,
              height: 115,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Row(
                children: [
                  Container(
                      width: 130,
                      height: 130,
                      child: Image.asset("rasm/sudhif.jpg")),
                  Column(
                    children: [
                      Text(
                        "Orginal Sushi",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "\$ 18.00",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 80),
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(fontSize: 10),
                      )),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 80),
                    child: Text("1 +"),
                  )
                ],
              ),
              width: 400,
              height: 115,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Row(
                children: [
                  Container(
                      width: 130,
                      height: 130,
                      child: Image.asset("rasm/sushi4.jpg")),
                  Column(
                    children: [
                      Text(
                        "Orginal Sushi",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "\$ 22.50",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 70),
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(fontSize: 10),
                      )),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 70),
                    child: Text("1 +"),
                  )
                ],
              ),
              width: 400,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Icon(Icons.menu),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Promo code",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Container(
                  width: 95,
                  height: 50,
                  child: Center(
                      child: Text(
                    "Apply",
                    style: TextStyle(color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  "Item total:",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 280,
                ),
                Text(
                  "\$70.50",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  "Delivery:",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 300,
                ),
                Text(
                  "free",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 280,
                ),
                Text(
                  "70.50",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              width: 400,
              height: 70,
              child: Center(
                child: Text(
                  "Paymet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          )
        ],
      ),
    );
  }
}

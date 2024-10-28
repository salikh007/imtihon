import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViewApp(),
    ),
  );
}

class PageViewApp extends StatefulWidget {
  const PageViewApp({super.key});

  @override
  State<PageViewApp> createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  // 1-sahifa uchun: raqamlarni taqqoslash
  TextEditingController vii = TextEditingController();
  TextEditingController vav = TextEditingController();
  String result = "";

  void compareNumbers() {
    setState(() {
      int number1 = int.tryParse(vii.text) ?? 0;
      int number2 = int.tryParse(vav.text) ?? 0;

      if (number1 > number2) {
        result = 'Birinchi raqam kattaroq: $number1';
      } else if (number1 < number2) {
        result = 'Ikkinchi raqam kattaroq: $number2';
      } else {
        result = 'Ikkala raqam teng: $number1';
      }
    });
  }

  // 2-sahifa uchun: oylarni tarjima qilish
  TextEditingController monthController = TextEditingController();
  String monthTranslation = "Oy nomini kiriting";

  void translateMonth() {
    setState(() {
      String month = monthController.text.toLowerCase();
      switch (month) {
        case 'yanvar':
          monthTranslation = 'January';
          break;
        case 'fevral':
          monthTranslation = 'February';
          break;
        case 'mart':
          monthTranslation = 'March';
          break;
        case 'aprel':
          monthTranslation = 'April';
          break;
        case 'may':
          monthTranslation = 'May';
          break;
        case 'iyun':
          monthTranslation = 'June';
          break;
        case 'iyul':
          monthTranslation = 'July';
          break;
        case 'avgust':
          monthTranslation = 'August';
          break;
        case 'sentabr':
          monthTranslation = 'September';
          break;
        case 'oktabr':
          monthTranslation = 'October';
          break;
        case 'noyabr':
          monthTranslation = 'November';
          break;
        case 'dekabr':
          monthTranslation = 'December';
          break;
        default:
          monthTranslation = "Bunday oy yo'q";
      }
    });
  }

  // 3-sahifa uchun: svetofor ko'rinishida dizayn
  Color circle1Color = Colors.black;
  Color circle2Color = Colors.black;
  Color circle3Color = Colors.black;

  void changeColor(int circleNumber) {
    setState(() {
      if (circleNumber == 1) {
        circle1Color = circle1Color == Colors.red ? Colors.black : Colors.red;
        circle2Color = Colors.black;
        circle3Color = Colors.black;
      } else if (circleNumber == 2) {
        circle1Color = Colors.black;
        circle2Color = circle2Color == Colors.yellow ? Colors.black : Colors.yellow;
        circle3Color = Colors.black;
      } else if (circleNumber == 3) {
        circle1Color = Colors.black;
        circle2Color = Colors.black;
        circle3Color = circle3Color == Colors.green ? Colors.black : Colors.green;
      }
    });
  }

  // 4-sahifa uchun: 9 ta konteyner
  List<Color> containerColors = List.generate(9, (index) => Colors.black);

  void changeContainerColor(int index) {
    setState(() {
      containerColors[index] = containerColors[index] == Colors.black
          ? Colors.primaries[index % Colors.primaries.length]
          : Colors.black;
    });
  }

  List<Map<String, String>> people = List.generate(20, (index) {
    return {
      'name': 'Inson ${index + 1}',
      'age': '${20 + index} yosh',
      'info': 'Bu Inson ${index + 1}-ning batafsil ma\'lumoti',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: vii,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: '1-raqamni kiriting',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: vav,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: '2-raqamni kiriting',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: compareNumbers,
                  child: Text('Taqqoslash'),
                ),
                SizedBox(height: 16),
                Text(
                  result,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: monthController,
                  decoration: InputDecoration(
                    labelText: 'Oy nomini kiriting (masalan: yanvar)',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: translateMonth,
                  child: Text('Tarjima qilish'),
                ),
                SizedBox(height: 16),
                Text(
                  monthTranslation,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => changeColor(1),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: circle1Color,
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () => changeColor(2),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: circle2Color,
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () => changeColor(3),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: circle3Color,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: containerColors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => changeContainerColor(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
            ),
          ),

          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("rasm/nexia.jpg")
                  ),
                ),
              ),
              Positioned(
                top: 150, 
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white.withOpacity(0.8), // Oq fon bilan qoplash
                  child: ListView.builder(
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                        child: ListTile(
                          title: Text(people[index]['name']!),
                          subtitle: Text(people[index]['age']!),
                          trailing: Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  name: people[index]['name']!,
                                  age: people[index]['age']!,
                                  info: people[index]['info']!,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name;
  final String age;
  final String info;

  const DetailPage({
    Key? key,
    required this.name,
    required this.age,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ism: $name', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Text('Yoshi: $age', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Text('Ma\'lumot: $info', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

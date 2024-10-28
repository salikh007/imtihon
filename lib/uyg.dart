import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Rasm, raqam va boshqa ma'lumotlarni saqlash uchun listlar
  final List<Map<String, dynamic>> data = List.generate(10, (index) {
    return {
      'number': index + 1,
      'avatarColor': Colors.primaries[index % Colors.primaries.length],
      'info': {
        'name': 'Muhammadsolih',
        'tel': '998908970777',
        'address': 'ATX. XUQANDIY 199/9',
      }
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Tepadagi dumaloq rasmlar va raqamlar listi
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: data.map((item) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: item['avatarColor'],
                            child: Image.asset("rasm/images.png")
                          ),
                          SizedBox(height: 5),
                          Text('${item['number']}'),  // Har bir yumaloq ostida raqam ko'rsatiladi
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              // Pastdagi konteynerlar va ichidagi ma'lumotlar listi
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 ta ustun
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          color: data[index]['avatarColor'],
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ism: ${data[index]['info']['name']}'),
                              Text('Tel: ${data[index]['info']['tel']}'),
                              Text('Manzil: ${data[index]['info']['address']}'),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 30,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.primaries[(index + 5) % Colors.primaries.length],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
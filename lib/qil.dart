import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '99 Ismlar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> names = [
    {'name': 'Ar-Rahman', 'meaning': 'The Beneficent', 'arabic': 'الرحمن'},
    {'name': 'Ar-Rahim', 'meaning': 'The Merciful', 'arabic': 'الرحيم'},
    {'name': 'Al-Malik', 'meaning': 'The King', 'arabic': 'الملك'},
    {'name': 'Al-Quddus', 'meaning': 'The Pure', 'arabic': 'القدوس'},
    {'name': 'As-Salam', 'meaning': 'The Source of Peace', 'arabic': 'السلام'},
    {'name': 'Al-Mu’min', 'meaning': 'The Infuser of Faith', 'arabic': 'المؤمن'},
    {'name': 'Al-Muhaymin', 'meaning': 'The Preserver of Safety', 'arabic': 'المهيمن'},
    {'name': 'Al-Aziz', 'meaning': 'The All-Mighty', 'arabic': 'العزيز'},
    {'name': 'Al-Jabbar', 'meaning': 'The Compeller', 'arabic': 'الجبار'},
    {'name': 'Al-Mutakabbir', 'meaning': 'The Supreme', 'arabic': 'المتكبر'},
    {'name': 'Al-Khaliq', 'meaning': 'The Creator', 'arabic': 'الخالق'},
    {'name': 'Al-Bari', 'meaning': 'The Evolver', 'arabic': 'البارئ'},
    {'name': 'Al-Musawwir', 'meaning': 'The Fashioner', 'arabic': 'المصور'},
    {'name': 'Al-Ghaffar', 'meaning': 'The Forgiving', 'arabic': 'الغفار'},
    {'name': 'Al-Qahhar', 'meaning': 'The Subduer', 'arabic': 'القهار'},
    {'name': 'Al-Wahhab', 'meaning': 'The Supreme Bestower', 'arabic': 'الوهاب'},
    {'name': 'Al-Razzaq', 'meaning': 'The Provider', 'arabic': 'الرزاق'},
    {'name': 'Al-Fattah', 'meaning': 'The Opener', 'arabic': 'الفتاح'},
    {'name': 'Al-Alim', 'meaning': 'The All-Knowing', 'arabic': 'العليم'},
    {'name': 'Al-Qabid', 'meaning': 'The Withholder', 'arabic': 'القابض'},
    {'name': 'Al-Basit', 'meaning': 'The Extender', 'arabic': 'الباسط'},
    {'name': 'Al-Khafid', 'meaning': 'The Reducer', 'arabic': 'الخافض'},
    {'name': 'Al-Rafi', 'meaning': 'The Exalter', 'arabic': 'الرافع'},
    {'name': 'Al-Mu’izz', 'meaning': 'The Honourer', 'arabic': 'المعز'},
    {'name': 'Al-Muzil', 'meaning': 'The Dishonourer', 'arabic': 'المذل'},
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Allohning 99 Ismlari'),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final item = names[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(item['name']!),
              subtitle: Text('${item['meaning']} (${item['arabic']})'),
            ),
          );
        },
      ),
    );
  }
}

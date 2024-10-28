import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BeautifulDesign(),
    );
  }
}

class BeautifulDesign extends StatefulWidget {
  @override
  _BeautifulDesignState createState() => _BeautifulDesignState();
}

class _BeautifulDesignState extends State<BeautifulDesign> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  String _selectedColor = "No color selected";
  Color _displayColor = Colors.grey;
  String _message = "";

  void _selectColor(String colorName, Color color) {
    setState(() {
      _selectedColor = colorName;
      _displayColor = color;
      _message = "$colorName tanlandi!";
    });
  }

  void _submit() {
    setState(() {
      if (_nameController.text.isEmpty || _surnameController.text.isEmpty) {
        _message = "Iltimos, ism va familiyangizni kiriting.";
      } else {
        _message = "${_nameController.text} ${_surnameController.text}, $_selectedColor tanladingiz!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautiful Design Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Ismingiz',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _surnameController,
              decoration: InputDecoration(
                labelText: 'Familiyangiz',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Sevimli rangingizni tanlang:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _selectColor("Sariq", Colors.yellow),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: Text("Sariq"),
                ),
                ElevatedButton(
                  onPressed: () => _selectColor("Qizil", Colors.red),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text("Qizil"),
                ),
                ElevatedButton(
                  onPressed: () => _selectColor("Yashil", Colors.green),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text("Yashil"),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Tasdiqlash'),
            ),
            SizedBox(height: 20),
            Text(
              _message,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                color: _displayColor,
                child: Center(
                  child: Text(
                    _selectedColor,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
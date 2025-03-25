import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText = '';
  Color backgroundColor = Colors.white;

  void addText() {
    setState(() {
      displayText = 'Hello from Button 1!';
    });
  }

  void removeText() {
    setState(() {
      displayText = '';
    });
  }

  void changeBackground() {
    setState(() {
      backgroundColor = backgroundColor == Colors.white ? Colors.lightBlueAccent : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(title: Text('My Flutter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(displayText, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: addText,
                child: Text('Add Text'),
              ),
              ElevatedButton(
                onPressed: removeText,
                child: Text('Remove Text'),
              ),
              ElevatedButton(
                onPressed: changeBackground,
                child: Text('Change Background'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

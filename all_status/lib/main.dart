import 'package:all_status/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String title;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'স্যাড স্ট্যাটাস অ্যাপস',
      theme: ThemeData(fontFamily: "NotoSerifBengali"),
      home: const Homescreen(title: 'স্যাড স্ট্যাটাস অ্যাপস'),
    );
  }
}

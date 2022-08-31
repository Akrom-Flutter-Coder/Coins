import 'package:flutter/material.dart';
import 'package:my_app/chart.dart';
import 'package:my_app/homeWork.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twice program',
      theme: ThemeData(
        backgroundColor: Colors.red
      ),
      home:const SilversApp(),
    );
  }
}
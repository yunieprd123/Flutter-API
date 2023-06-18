import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant/screens/login.dart';
import 'package:plant/UI/testapi.dart';
import 'package:plant/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

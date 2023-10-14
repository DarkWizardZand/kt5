import 'package:flutter/material.dart';
import 'package:kt5/pages/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kt4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 3, 112)),
        useMaterial3: true,
      ),
      routes:{
        '/':(context) => Get(title: 'Получение'),
      }
    );
  }
}
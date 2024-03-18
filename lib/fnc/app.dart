import 'package:flutter/material.dart';
import 'package:lab1/UI/homep.dart';

class MyRootWidget extends StatelessWidget {
  const MyRootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Профиль студента',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Профиль студента'),
    );
  }
}
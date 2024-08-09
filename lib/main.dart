import 'package:flutter/material.dart';
import 'package:linkedin/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'linkedin',
      theme: 
      ThemeData.light(),
      home: const HomePage(),
    );
  }
}


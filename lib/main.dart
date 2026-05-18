import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const TugasUIFlutterApp());
}

class TugasUIFlutterApp extends StatelessWidget {
  const TugasUIFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas UI Flutter',
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
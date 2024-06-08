import 'package:flutter/material.dart';
import 'package:flutter_application_16/Medicos/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hospital ",
      debugShowCheckedModeBanner: false,
      home:HomePage (),
    );
  }
}
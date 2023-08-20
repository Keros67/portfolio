import 'package:flutter/material.dart';
import 'package:portfolio/pages/homepage.dart';



void main() {
  runApp(const PortfolioApp());
}


class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon Portfolio',
      theme: ThemeData(
        fontFamily: "Poppins", 
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home:const HomePage(),
    );
  }
}


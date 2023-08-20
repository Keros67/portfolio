import 'package:flutter/material.dart';

class Competences extends StatefulWidget {
  const Competences({super.key});

  @override
  State<Competences> createState() => _CompetencesState();
}

class _CompetencesState extends State<Competences> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Compétences',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
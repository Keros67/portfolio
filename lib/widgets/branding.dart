import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/title_text.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleText(
          string: "Mon Portfolio",
          ),
        const SizedBox(width: 8),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(image: Image.asset(profil).image,
            fit: BoxFit.cover
            ),
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(''),
        ),
      ],
    );
  }
}
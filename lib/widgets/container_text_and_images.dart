import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';

class ContainerTextAndImage extends StatelessWidget {
  const ContainerTextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: Image.asset(homeImage).image,
          fit: BoxFit.cover,
        )),
        child:  const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              "Bonjour,\n je suis Sylvain TOUKAM,\n Devellopeur Web & Flutter.",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white60, //Color(0xFF02369D),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}

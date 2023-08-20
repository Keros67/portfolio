import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    Screensize screensize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;

    //final GlobalKey _anchorKey = GlobalKey();

    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: (size.height + 10) - ((screensize == Screensize.small) ? 30 : 20),
          left: (size.width / 7),
          right: (size.width / 5),
        ),
        child: (screensize == Screensize.small) ? small() : big(),
      ),
    );
  }
}

Widget small() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: getFloating(),
  );
}

Widget big() {
  return Container(
    height: 40,
    child: Card(
      elevation: 8,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
          getCardHoverButton(),
        ),
    ),
  );
}

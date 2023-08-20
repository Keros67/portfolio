import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleText extends Text {
  String string;

  TitleText({super.key, required this.string})
      : super(
          string,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: Colors.grey[600],//Color(0xFF02369D),
          ),
        );
}

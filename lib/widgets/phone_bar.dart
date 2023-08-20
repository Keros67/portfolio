import 'package:flutter/material.dart';
import 'package:portfolio/widgets/branding.dart';
import 'package:portfolio/constant.dart';

// ignore: must_be_immutable
class PhoneBar extends AppBar {
  double opacity;
  
  PhoneBar({super.key, required this.opacity})
      : super(
          title: const Branding(),
          centerTitle: true,
          backgroundColor: primary.withOpacity(opacity),
        );
}

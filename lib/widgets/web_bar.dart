import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/models/button_object.dart';
import 'package:portfolio/pages/next_page_tesr.dart';
import 'package:portfolio/widgets/branding.dart';
import 'package:portfolio/widgets/hover_button.dart';

// ignore: must_be_immutable
class WebBar extends PreferredSize {
  Size? size;
  double opacity;

  WebBar({@required this.size, required this.opacity})
      : super(
            preferredSize: Size((size!.width), (size.height / 3)),
            child: Container(
                padding: EdgeInsets.all(10),
                color: primary.withOpacity(opacity),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Branding(),
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: menuButtonHover())),
                    HoverButton(
                        button: ButtonObject(
                            text: "Log In", destination: NextPage()))
                  ],
                )));
}

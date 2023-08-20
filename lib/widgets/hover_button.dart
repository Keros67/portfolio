import 'package:flutter/material.dart';
import 'package:portfolio/models/button_object.dart';

// ignore: must_be_immutable
class HoverButton extends StatefulWidget {
  HoverButton({super.key, required this.button});

  ButtonObject button;

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool hoverValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.button.text ?? "",
            style: TextStyle(
              color: (hoverValue) ? Colors.grey : Colors.white70,
            ),
            ),
            Container(
              height: 2,
              width: 50,
              color: (hoverValue) ? Colors.grey : Colors.transparent,
            ),
          ],
        )
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.button.destination),
        );
      },
      onHover: (hover) {
        setState(() {
          hoverValue = hover;
        });
      },
    );
  }
}

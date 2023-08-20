import 'package:flutter/material.dart';
import 'package:portfolio/models/occasion.dart';

class OccasionWidget extends StatefulWidget {
  const OccasionWidget({super.key, required this.size, required this.occasion});

  final Size size;
  final Occasion occasion;

  @override
  State<OccasionWidget> createState() => _OccasionWidgetState();
}

class _OccasionWidgetState extends State<OccasionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: widget.size.height,
            width: widget.size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                widget.occasion.path,
                fit: BoxFit.cover,
              )
            )
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
        Text(
          widget.occasion.name,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          )
        )
        ],
        ),
    );
  }
}

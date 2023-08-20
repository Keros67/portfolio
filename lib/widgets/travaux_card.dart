import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/models/travaux_models.dart';

// ignore: must_be_immutable
class TravauxCard extends StatefulWidget {
  TravauxCard({super.key, required this.travaux, required this.cardSize});
  Size cardSize;
  Travaux travaux;

  @override
  State<TravauxCard> createState() => _TravauxCardState();
}

class _TravauxCardState extends State<TravauxCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('Tapped');
        },
        onHover: (value) {
          if (value) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: widget.cardSize.height,
            width: (isHover) ? widget.cardSize.width + 10 : widget.cardSize.width,
            child: Card(
              borderOnForeground: false,
              //shadowColor: Colors.transparent,
              elevation: (isHover) ? 8 : 0,
                color: primary,
                child: Column(
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.travaux.image,
                        fit: BoxFit.cover,
                        width: widget.cardSize.width - 20,
                      ),
                    ),
                    ),
                    Text(
                      widget.travaux.name,
                    ),
                  //Text(widget.travaux.comment),
                  ],
                )),
          ),
        ));
  }
}

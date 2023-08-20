import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/title_text.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(40),
      child: Card(
        color: Colors.grey[100],
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:[
              Column(
                children: [
                  Text(
                quote,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontFamily: 'Electrolize',
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              cv("ici", context),
                ]
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(child: Container()),
                  TitleText(string: author)
                ],
                ),
            ],
            ),
        )
      ),
    );
  }
}
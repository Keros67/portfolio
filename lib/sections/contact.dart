import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/widgets/title_text.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Colors.grey[100],
        width: size.width,
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TitleText(string: 'Contact:'),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: social(),
                ),
                const Column(
                  children: [
                    Text('Contactez-nous:'),
                    TextButton(
                      onPressed: null,
                      child: Text('Tel: 06.00.00.00.00'),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('Email: craig03@hotmail.fr'),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }

  List<Widget> social() {
    List<Widget> items = [const Text('Social')];
    items.addAll(getSocialButton());
    return items;
  }
}

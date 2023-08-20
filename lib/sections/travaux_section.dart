import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/models/make_it_responsive.dart';
import 'package:portfolio/models/travaux_models.dart';
import 'package:portfolio/widgets/title_text.dart';
import 'package:portfolio/widgets/travaux_card.dart';

class TravauxSections extends StatefulWidget {
  const TravauxSections({super.key});

  @override
  State<TravauxSections> createState() => _TravauxSectionsState();
}

class _TravauxSectionsState extends State<TravauxSections> {
  @override
  Widget build(BuildContext context) {
    Screensize screensize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    double ratio = MakeItResponsive().getRation(context);
    Size cardSize = size * ratio;
    List<Travaux> travaux = [
      archi, moustache, fleur, leche, gourmand, dog
    ];
    List<TravauxCard> cards = travaux.map((e) => TravauxCard(travaux: e, cardSize: cardSize,)).toList();

    return Container(
        width: size.width,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                TitleText(string: 'Mes travaux: '),
                Expanded(child: Container()),
              ],
            ),
            MakeItResponsive().responsiveRows(cards, screensize),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

class MakeItResponsive {
  double minPoint = 700;
  double maxPoint = 1000;

  Screensize getScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > maxPoint) {
      return Screensize.large;
    } else if (size.width < minPoint) {
      return Screensize.small;
    } else {
      return Screensize.medium;
    }
  }

  Widget responsiveRows(List<Widget> widgets, Screensize screensize) {
    int maxItems = 0;
    if (screensize == Screensize.small) {
      maxItems = 2;
    } else if (screensize == Screensize.medium) {
      maxItems = 3;
    } else {
      maxItems = 4;
    }

    List<List<Widget>> parsedList = toArrays(widgets, maxItems);

    List<Column> columns = parsedList
        .map((e) => Column(
              children: e,
            ))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columns,
    );
  }

  double getRation(BuildContext context) {
    Screensize screensize = getScreenSize(context);
    switch (screensize) {
      case Screensize.small:
        return 0.37;
      case Screensize.medium:
        return 0.25;
      case Screensize.large:
        return 0.2;
      default:
        return 0.5;
    }
  }

  double getScrollingOpacity(double userPosition, double screenHeight) {
    double shouldBeOpaque = (screenHeight / 2);
    if (shouldBeOpaque <= userPosition) {
      return 1;
    } else {
      return userPosition / shouldBeOpaque;
    }
  }
}

enum Screensize { small, medium, large }

List<List<Widget>> toArrays(List<Widget> widgets, int maxItems) {
  //Créer liste vide
  List<List<Widget>> newList = [];

  //index
  int index = 0;

  //Creer des listes vide corespondant au max
  for (int i = 0; i < maxItems; i++) {
    newList.add([]);
  }
  //Passe a travers list de base et peupler nouvelle
  for (int x = 0; x < widgets.length; x++) {
    if (index >= maxItems) {
      index = 0;
    }
    List<Widget> currentList = newList[index];
    currentList.add(widgets[x]);
    newList[index] = currentList;
    index++;
  }
  return newList;
}

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/button_object.dart';
import 'package:portfolio/models/carousel_image.dart';
import 'package:portfolio/models/occasion.dart';
import 'package:portfolio/models/travaux_models.dart';
import 'package:portfolio/models/url_class.dart';
import 'package:portfolio/pages/next_page_tesr.dart';
import 'package:portfolio/pages/portfolio_screen.dart';
import 'package:portfolio/sections/competences.dart';
import 'package:portfolio/sections/contact.dart';
import 'package:portfolio/sections/presentation.dart';
import 'package:portfolio/sections/travaux_section.dart';
import 'package:portfolio/widgets/hover_button.dart';
import 'package:portfolio/widgets/occasion_widget.dart';
import 'package:portfolio/widgets/url_button.dart';

String profil = "images/profil.jpg";
String homeImage = "images/homeImage.jpg";
//String background = "images/background.jpg";

String electrolize = "fonts/Electrolize/Electrolize-Regular.ttf";

final GlobalKey _anchorKey = GlobalKey();

Color primary = const Color(0x0000197D);

List<ButtonObject> menuButton = [
  ButtonObject(text: "Présentation", destination: Presentation()),
  ButtonObject(text: "Travaux", destination: TravauxSections()),
  ButtonObject(text: "Compétences", destination: Competences()),
  ButtonObject(text: "Contact", destination: ContactSection()),
];

List<HoverButton> menuButtonHover() => menuButton
    .map((button) => HoverButton(
          button: button,
        ))
    .toList();

List<ButtonObject> containerButton = [
  /*ButtonObject(
      text: "Téléphone",
      destination: NextPage(),
      icon: const Icon(Icons.phone_outlined)),*/
  ButtonObject(
      text: "Contact",
      destination: PortfolioScreen(),
      icon: const Icon(Icons.mail_outline)),
  /*ButtonObject(
      text: "Visio",
      destination: NextPage(),
      icon: const Icon(Icons.person_2_outlined)),*/
];

List<FloatingActionButton> getFloating() => containerButton
    .map((btn) => FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orangeAccent,
          heroTag: btn.text,
          child: btn.icon,
        ))
    .toList();

List<HoverButton> getCardHoverButton() =>
    containerButton.map((e) => HoverButton(button: e)).toList();

List<UrlClass> networks = [
  UrlClass(name: "Facebook", url: "https://www.facebook.com/"),
  UrlClass(name: "Instagram", url: "https://www.instagram.com/"),
  UrlClass(name: "Twitter", url: "https://twitter.com/"),
  UrlClass(name: "Youtube", url: "https://www.youtube.com/"),
  UrlClass(name: "Linkedin", url: "https://www.linkedin.com/"),
  UrlClass(name: "Github", url: "https://github.com/"),
];

List<UrlButton> getSocialButton() =>
    networks.map((e) => UrlButton(urlClass: e)).toList();

List<Occasion> occasions = [
  Occasion(
    name: 'Mariage',
    path: homeImage,
  ),
  Occasion(
    name: 'Anniversaire',
    path: homeImage,
  ),
  Occasion(
    name: 'Autre',
    path: homeImage,
  ),
];

List<OccasionWidget> widgets(Size size) =>
    occasions.map((o) => OccasionWidget(size: size, occasion: o)).toList();

int index = 0;
CarouselController carouselController = CarouselController();

List<CarouselImage> images = [
  CarouselImage(name: "Brownies", path: homeImage),
  CarouselImage(name: "Cupcakes", path: homeImage),
  CarouselImage(name: "Cheesecake", path: homeImage),
  CarouselImage(name: "Gateau au chocolat", path: homeImage),
  CarouselImage(name: "Donuts", path: homeImage),
  CarouselImage(name: "Tiramisu", path: homeImage),
  CarouselImage(name: "Wedding cake", path: homeImage),
];

String quote =
    " Développeur passionné dans le domaine du web & Flutter depuis 2 ans, actuellement développeur Flutter.\n Je conçois et réalise des sites web du cahier des charges à la mise en ligne.\n Je developpe aussi en Flutter, ce qui me permet de développer des applications mobiles android et Ios. \n \n Vous souhaitez avoir mon CV au format PDF c'est par";
String author = "Sylvain TOUKAM";

InkWell cv(String text, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NextPage()));
    },
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}

Travaux archi = Travaux(
    name: "Archibald",
    image: homeImage,
    comment: "Horrible ! Ces donuts étaient trop bons");
Travaux moustache =
    Travaux(name: "Moustache", image: homeImage, comment: "Gâteauuuuuuu!");
Travaux fleur = Travaux(
    name: "Fleur",
    image: homeImage,
    comment: "C'était trop bon! J'ai même gardé la déco fleur du gâteau");
Travaux leche = Travaux(
    name: "Mistigri",
    image: homeImage,
    comment: "Je m'en lèche encore les babines de mon cookie");
Travaux gourmand = Travaux(
    name: "Gourmand", image: homeImage, comment: "Humain! Encore du gâteau");
Travaux dog = Travaux(
    name: "Medor",
    image: homeImage,
    comment:
        "Depuis que j'ai gouté les cupcakes d4athena, je me déguise qu'lle me prenne pour un chat");

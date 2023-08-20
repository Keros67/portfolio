import 'package:flutter/material.dart';
import 'package:portfolio/models/make_it_responsive.dart';
import 'package:portfolio/sections/competences.dart';
import 'package:portfolio/sections/contact.dart';
import 'package:portfolio/sections/presentation.dart';
import 'package:portfolio/sections/top_stack.dart';
import 'package:portfolio/sections/travaux_section.dart';
import 'package:portfolio/widgets/darwer.dart';
import 'package:portfolio/widgets/phone_bar.dart';
import 'package:portfolio/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  double _currentUserPosition = 0;

  setupScrollListener() {
    setState(() {
      _currentUserPosition = _scrollController.position.pixels;
      print(_currentUserPosition);
    });
  }

  @override
  void initState() {
    _scrollController.addListener(setupScrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Screensize screenSize = MakeItResponsive().getScreenSize(context);
    double opacity = MakeItResponsive().getScrollingOpacity(_currentUserPosition, size.height);

    //final GlobalKey _anchorKey = GlobalKey();

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar:
          (screenSize == Screensize.small) ? PhoneBar(opacity: opacity,) : WebBar(size: size, opacity: opacity,),
      drawer: const DrawerSmall(),
      body: SingleChildScrollView(
          controller: _scrollController,
          child: const Column(
            children: [
              TopStack(),
              Presentation(),
              TravauxSections(),
              Competences(),
              ContactSection(),
             
            ],
          )),
    );
  }
}

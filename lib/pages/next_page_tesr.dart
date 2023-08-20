import 'package:flutter/material.dart';
import 'package:portfolio/models/make_it_responsive.dart';
import 'package:portfolio/widgets/phone_bar.dart';
import 'package:portfolio/widgets/web_bar.dart';

class NextPage extends StatefulWidget {
   NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {

    ScrollController _scrollController = ScrollController();
  double _currentUserPosition = 0;

  setupScrollListener() {
    setState(() {
      _currentUserPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(setupScrollListener);
    super.initState();
  }
  
    Size size = MediaQuery.of(context).size;
    Screensize screensize = MakeItResponsive().getScreenSize(context);
    double opacity = MakeItResponsive().getScrollingOpacity(_currentUserPosition, size.height);
    
    return Scaffold(
      appBar: (screensize == Screensize.small) ? PhoneBar(opacity: opacity,) : WebBar(size: size, opacity: opacity,),
      body: Center(
        child: Text("Nous sommes passés à la page suivante"),
      ),
    );
  }
}

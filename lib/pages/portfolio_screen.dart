import 'package:flutter/material.dart';
import 'package:portfolio/pages/portfolio_body.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
          title: const Text('Mon Portfolio')),
      body: const PortfolioBody(),
    );
  }
}

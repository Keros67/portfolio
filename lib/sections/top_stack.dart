import 'package:flutter/material.dart';
import 'package:portfolio/widgets/container_button.dart';
import 'package:portfolio/widgets/container_text_and_images.dart';

class TopStack extends StatelessWidget {
  const TopStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ContainerTextAndImage(),
        ContainerButton(),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio/constant.dart';
import 'package:portfolio/models/button_object.dart';
import 'package:portfolio/widgets/branding.dart';

class DrawerSmall extends StatelessWidget {
  const DrawerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Center(child: Branding());
          } else {
            ButtonObject button = menuButton[index - 1];
            return ListTile(
              title: Text(button.text ?? ""),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => button.destination));
                
              },
            );
          }
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: menuButton.length + 1,
      ),
    );
  }
}
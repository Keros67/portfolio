import 'package:flutter/material.dart';
import 'package:portfolio/models/url_class.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class UrlButton extends StatelessWidget {
  const UrlButton({
    super.key,
    required this.urlClass,
  });

  final UrlClass urlClass;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: 
        launchUrl,
      child: Text(
        urlClass.name,
        /*style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),*/
      ),
    );
  }

  launchUrl() async {
    await 
      canLaunch(urlClass.url) ? await launch(urlClass.url) : throw 'Impossible à lancer. Raison:${urlClass.url}';
  }
}

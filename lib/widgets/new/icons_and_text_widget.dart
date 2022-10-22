// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconsAndextwidget extends StatelessWidget {
  const IconsAndextwidget(
      {super.key, required this.text, required this.image, required this.link});

  final String image;
  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 100,
          icon: Image.asset(
            image,
            width: 100,
            height: 100,
          ),
          onPressed: () {
            launch(link);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: AutoSizeText(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xFFE10A43),
              fontSize: MediaQuery.of(context).size.height * 0.039,
            ),
          ),
        ),
      ],
    );
  }
}

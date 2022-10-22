import 'package:flutter/material.dart';

import 'icon_svg.dart';

class AllSocialMedia extends StatefulWidget {
  const AllSocialMedia({Key? key}) : super(key: key);

  @override
  State<AllSocialMedia> createState() => _AllSocialMediaState();
}

class _AllSocialMediaState extends State<AllSocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        IconSvg(
          image: 'assets/images/soshal/youtube.svg',
          link:
              'https://www.youtube.com/channel/UC7umtsaMtkc9dR-A69LeXmQ/videos',
        ),
        IconSvg(
          image: 'assets/images/soshal/facebook.svg',
          link: 'https://www.facebook.com/Quality.machines.sport.maintenance',
        ),
        IconSvg(
          image: 'assets/images/soshal/whatsapp.svg',
          link: 'https://api.whatsapp.com/send?phone=201024176369',
        ),
        IconSvg(
          image: 'assets/images/soshal/phone.svg',
          link: "tel://01024176369",
        ),
      ],
    );
  }
}

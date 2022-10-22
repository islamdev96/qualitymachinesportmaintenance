// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../model/constants.dart';
import '../new/elevated_button_widget.dart';
import '../new/icon_image.dart';
import '../new/icon_svg.dart';
import '../new/Sized_box_respo.dart';

class ConnectToPhoneMobile extends StatefulWidget {
  const ConnectToPhoneMobile({super.key});

  @override
  State<ConnectToPhoneMobile> createState() => _ConnectToPhoneMobileState();
}

class _ConnectToPhoneMobileState extends State<ConnectToPhoneMobile> {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: AutoSizeText(
            'اتصل بنا الان نصلك اينما كنت',
            // overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: size.height * 0.03,
            ),
          ),
        ),
        Column(
          children: const [
            IconImage(
              image: 'assets/images/new/phone.png',
              link: 'tel://01024176369',
            ),
            ElevatedButtonWidget(
              color: kPrimaryColor,
              link: "tel://01024176369",
              text: '01024176369',
            ),
          ],
        ),
        Column(
          children: const [
            IconImage(
              image: 'assets/images/new/phone.png',
              link: 'tel://01116531735',
            ),
            ElevatedButtonWidget(
              color: kPrimaryColor,
              link: "tel://01116531735",
              text: '01116531735',
            ),
          ],
        ),
        Column(
          children: const [
            IconImage(
              image: 'assets/images/new/land.png',
              link: 'tel://01116531735',
            ),
            ElevatedButtonWidget(
              color: kPrimaryColor,
              link: "tel://00221863393",
              text: '00221863393',
            ),
          ],
        ),
        SizedBox(
          height: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.01
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.05
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.25
                      : MediaQuery.of(context).size.width * 0.002,
        ),
        Column(
          children: [
            const SizedBoxRespo(
              mobile: 0.19,
              desktop: 0.1,
              tablet: 0.1,
              else1: 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: AutoSizeText(
                'سوشيال ميديا ',
                // overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: size.height * 0.03,
                ),
              ),
            ),
            // https://www.youtube.com/channel/UC7umtsaMtkc9dR-A69LeXmQ/videos
            Column(
              children: [
                const IconSvg(
                  image: 'assets/images/soshal/whatsapp.svg',
                  link: 'https://api.whatsapp.com/send?phone=201024176369',
                ),
                ElevatedButtonWidget(
                  color: Colors.green[800]!,
                  link: 'https://api.whatsapp.com/send?phone=201024176369',
                  text: 'whatsapp',
                ),
              ],
            ),
            Column(
              children: const [
                IconSvg(
                  image: 'assets/images/soshal/youtube.svg',
                  link:
                      'https://www.youtube.com/channel/UC7umtsaMtkc9dR-A69LeXmQ/videos',
                ),
                ElevatedButtonWidget(
                  color: kBackgroundColor3,
                  link:
                      'https://www.youtube.com/channel/UC7umtsaMtkc9dR-A69LeXmQ/videos',
                  text: 'Youtube',
                ),
              ],
            ),
            Column(
              children: const [
                IconSvg(
                  image: 'assets/images/soshal/facebook.svg',
                  link:
                      'https://www.facebook.com/Quality.machines.sport.maintenance',
                ),
                ElevatedButtonWidget(
                  color: Colors.blueAccent,
                  link:
                      'https://www.facebook.com/Quality.machines.sport.maintenance',
                  text: 'Facebook',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

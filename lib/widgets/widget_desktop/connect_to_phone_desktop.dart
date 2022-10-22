// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quality_sport/widgets/new/center_widget.dart';

import '../../model/constants.dart';
import '../new/elevated_button_widget.dart';
import '../new/icon_image.dart';
import '../new/icon_svg.dart';

class ConnectToPhoneDesktop extends StatefulWidget {
  const ConnectToPhoneDesktop({super.key});

  @override
  State<ConnectToPhoneDesktop> createState() => _ConnectToPhoneDesktopState();
}

class _ConnectToPhoneDesktopState extends State<ConnectToPhoneDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CenterdedWidget(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AutoSizeText(
              'ارقام التواصل ',
              // overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: size.height * 0.03,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
            ],
          ),
          SizedBox(
            height: size.height * 0.4,
          ),
          Column(
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const IconSvg(
                        image: 'assets/images/soshal/whatsapp.svg',
                        link:
                            'https://api.whatsapp.com/send?phone=201024176369',
                      ),
                      ElevatedButtonWidget(
                        color: Colors.green[800]!,
                        link:
                            'https://api.whatsapp.com/send?phone=201024176369',
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
          ),
        ],
      ),
    );
  }
}

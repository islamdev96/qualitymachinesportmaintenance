// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class IconSvg extends StatelessWidget {
  const IconSvg({super.key, required this.image, required this.link});
  final String image;
  final String link;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.width * 0.1
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.width * 0.05
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.width * 0.05
                        : MediaQuery.of(context).size.width * 0.05,
          ),
          child: IconButton(
            iconSize: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.width * 0.1
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.width * 0.03
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.width * 0.05
                        : MediaQuery.of(context).size.width * 0.05,
            icon: SvgPicture.asset(
              image,
              width: deviceType == DeviceScreenType.mobile
                  ? MediaQuery.of(context).size.width * 0.9
                  : deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.width * 0.05
                      : deviceType == DeviceScreenType.tablet
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.width * 0.05,
            ),
            onPressed: () {
              launch(link);
            },
          ),
        ),
      ],
    );
  }
}

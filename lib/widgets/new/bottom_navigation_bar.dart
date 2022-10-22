// ignore_for_file: deprecated_member_use

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quality_sport/model/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavigationBarAll extends StatefulWidget {
  const BottomNavigationBarAll({super.key});

  @override
  State<BottomNavigationBarAll> createState() => _BottomNavigationBarAllState();
}

class _BottomNavigationBarAllState extends State<BottomNavigationBarAll> {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return CurvedNavigationBar(
      color: kPrimaryColor,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.green[800],
      animationDuration: const Duration(milliseconds: 200),
      height: deviceType == DeviceScreenType.mobile
          ? MediaQuery.of(context).size.width * 0.14
          : deviceType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.width * 0.001
              : deviceType == DeviceScreenType.tablet
                  ? MediaQuery.of(context).size.width * 0.07
                  : MediaQuery.of(context).size.width * 0.001,
      items: <Widget>[
        // Icon(Icons.home, size: 25, color: Colors.white, shadows: []),
        Icon(
          Icons.phone,
          size: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.08
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.01
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.07
                      : MediaQuery.of(context).size.width * 0.36,
          color: Colors.white,
        ),
        Icon(
          Icons.whatsapp,
          size: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.08
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.36
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.07
                      : MediaQuery.of(context).size.width * 0.36,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          launch("tel://01024176369");
        } else if (index == 1) {
          launch('https://api.whatsapp.com/send?phone=201024176369');
        }
      },
    );
  }
}

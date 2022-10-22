// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class StackIconsphone extends StatelessWidget {
  const StackIconsphone({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Padding(
      padding: EdgeInsets.all(
        deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 0.01
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.01
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 0.05
                    : MediaQuery.of(context).size.width * 0.05,
      ),
      child: ElevatedButton(
        onPressed: () {
          launch(
            'tel:01024176369',
          );
        },
        focusNode: FocusNode(),
        autofocus: true,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
            Size(
              deviceType == DeviceScreenType.mobile
                  ? MediaQuery.of(context).size.width * 0.0
                  : deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.width * 0.05
                      : deviceType == DeviceScreenType.tablet
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.width * 0.05,
              deviceType == DeviceScreenType.mobile
                  ? MediaQuery.of(context).size.height * 0.09
                  : deviceType == DeviceScreenType.desktop
                      ? MediaQuery.of(context).size.height * 0.1
                      : deviceType == DeviceScreenType.tablet
                          ? MediaQuery.of(context).size.height * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.primaries[Random().nextInt(Colors.primaries.length)]),
          // amberAccent
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  deviceType == DeviceScreenType.mobile
                      ? MediaQuery.of(context).size.width * 0.00
                      : deviceType == DeviceScreenType.desktop
                          ? MediaQuery.of(context).size.width * 0.1
                          : deviceType == DeviceScreenType.tablet
                              ? MediaQuery.of(context).size.width * 0.05
                              : MediaQuery.of(context).size.width * 0.05,
                ),
              ),
              side: const BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: Icon(
          Icons.phone_iphone,
          color: Colors.white,
          size: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.07
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.032
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.05
                      : MediaQuery.of(context).size.width * 0.05,
        ),
      ),
    );
  }
}

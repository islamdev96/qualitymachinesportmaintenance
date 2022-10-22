import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextButtonLogo extends StatelessWidget {
  const TextButtonLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 0.1
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.02
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 0.02
                    : MediaQuery.of(context).size.width * 0.05,
        child: CircleAvatar(
          backgroundImage: const AssetImage('assets/images/new/9.png'),
          radius: deviceType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.06
              : deviceType == DeviceScreenType.desktop
                  ? MediaQuery.of(context).size.width * 0.019
                  : deviceType == DeviceScreenType.tablet
                      ? MediaQuery.of(context).size.width * 0.019
                      : MediaQuery.of(context).size.width * 0.07,
        ),
      ),
    );
  }
}

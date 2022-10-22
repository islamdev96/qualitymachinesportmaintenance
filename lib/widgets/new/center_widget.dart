import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../model/constants.dart';

class CenterdedWidget extends StatelessWidget {
  final Widget child;

  const CenterdedWidget({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.width * 0.01
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.width * 0.02
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.width * 0.02
                    : MediaQuery.of(context).size.width * 0.02,
        vertical: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.height * 0.0
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.height * 0.0001
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.height * 0.0001
                    : MediaQuery.of(context).size.height * 0.002,
      ),
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.width * 1
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.width * 1
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.width * 1
                        : MediaQuery.of(context).size.width * 0.002,
            minWidth: deviceType == DeviceScreenType.mobile
                ? MediaQuery.of(context).size.width * 1
                : deviceType == DeviceScreenType.desktop
                    ? MediaQuery.of(context).size.width * 1
                    : deviceType == DeviceScreenType.tablet
                        ? MediaQuery.of(context).size.width * 1
                        : MediaQuery.of(context).size.width * 0.002,
          ),
          child: child),
    );
  }
}

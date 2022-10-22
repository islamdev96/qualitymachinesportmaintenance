// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widget_desktop/connect_to_phone_desktop.dart';
import '../widget_mobile/connect_to_phone_mobile.dart';

class ConnectToPhone extends StatefulWidget {
  const ConnectToPhone({super.key});

  @override
  State<ConnectToPhone> createState() => _ConnectToPhoneState();
}

class _ConnectToPhoneState extends State<ConnectToPhone> {
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return deviceType == DeviceScreenType.desktop
        ? const ConnectToPhoneDesktop()
        : const ConnectToPhoneMobile();
  }
}

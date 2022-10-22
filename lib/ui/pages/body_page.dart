// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../model/constants.dart';
import '../../widgets/new/elevated_icon_phone.dart';
import '../../widgets/new/elevated_icon_wats.dart';
import '../../widgets/widget_nav_bar/nav_bar.dart';
import '../device_ screen_type/desktop/main_content_desktop.dart';
import '../device_ screen_type/mobile/all_project.dart';

class BodyPage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    @override
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.mobile) {
                    return AllProject();
                  } else if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop) {
                    return MainContentDesktop();
                  } else if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return AllProject();
                  } else {
                    return AllProject();
                  }
                },
              ),
            ],
          ),
        ),
        deviceType == DeviceScreenType.desktop
            ? Container(
                color: kBackgroundColor2,
                child: const NavBarWidget(),
              )
            : Container(
                height: 0,
              ),
        deviceType == DeviceScreenType.desktop
            ? AnimatedPositioned(
                duration: const Duration(seconds: 5),
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  children: const [
                    StackIconsphone(),
                    Spacer(),
                    StackIconsWats(),
                  ],
                ),
              )
            : Container(
                height: 0,
              ),
      ],
    );
  }
}

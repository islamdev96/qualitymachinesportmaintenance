// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/constants.dart';
import '../../widgets/new/bottom_navigation_bar.dart';
import 'body_page.dart';
import 'dawer_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    @override
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      drawer: const Center(
        child: SizedBox(
          width: 250,
          child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
                bottomRight: Radius.circular(45),
                bottomLeft: Radius.circular(45),
                topLeft: Radius.circular(45),
              ),
            ),
            backgroundColor: kPrimaryColor,
            elevation: 10.0,
            child: DrawerWidget(),
          ),
        ),
      ),
      appBar: deviceType == DeviceScreenType.desktop
          ? null
          : AppBar(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  deviceType == DeviceScreenType.mobile
                      ? MediaQuery.of(context).size.width * 0.017
                      : deviceType == DeviceScreenType.desktop
                          ? MediaQuery.of(context).size.width * 0.2
                          : deviceType == DeviceScreenType.tablet
                              ? MediaQuery.of(context).size.width * 0.05
                              : MediaQuery.of(context).size.width * 0.2,
                ),
                child: Container(
                  color: kPrimaryColor,
                ),
              ),
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/images/new/9.png',
                    ),
                    onPressed: () {
                      launch(
                        'https://www.facebook.com/Quality.machines.sport.maintenance',
                      );
                    },
                  ),
                ),
                // const Spacer(),
              ],
              backgroundColor: kPrimaryColor,
              iconTheme: IconThemeData(
                color: kBackgroundColor,
                size: deviceType == DeviceScreenType.mobile
                    ? MediaQuery.of(context).size.height * 0.038
                    : deviceType == DeviceScreenType.desktop
                        ? MediaQuery.of(context).size.height * 0.36
                        : deviceType == DeviceScreenType.tablet
                            ? MediaQuery.of(context).size.width * 0.05
                            : MediaQuery.of(context).size.height * 0.36,
              ),
            ),
      body: BodyPage(),
      bottomNavigationBar: deviceType == DeviceScreenType.mobile
          ? const BottomNavigationBarAll()
          : deviceType == DeviceScreenType.tablet
              ? const BottomNavigationBarAll()
              : null,
    );
  }
}

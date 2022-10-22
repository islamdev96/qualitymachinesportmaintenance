// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quality_sport/widgets/new/elevated_button_widget.dart';

import '../../ui/pages/home_page.dart';
import '../widget_nav_bar/text_button_icon.dart';
import '../widget_nav_bar/text_button_logo.dart';

class DrawerWidget extends StatelessWidget {
  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextButtonLogo(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomePage.routeName);
                  },
                  child: TextButtonWidget(title: ' الرئيسية'),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed(ContactPage.routeName);
                  },
                  child: TextButtonWidget(title: '  تواصل معنا'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButtonWidget(
              color: Colors.green[800]!,
              link: 'https://api.whatsapp.com/send?phone=201024176369',
              text: 'whatsapp',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ElevatedButtonWidget(
              color: Colors.blueAccent,
              link:
                  'https://www.facebook.com/Quality.machines.sport.maintenance',
              text: 'Facebook',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const ElevatedButtonWidget(
              color: Color(0xFFE10A43),
              link: "tel://01024176369",
              text: '01024176369',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

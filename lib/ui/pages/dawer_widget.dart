import 'package:flutter/material.dart';

import '../../widgets/new/elevated_button_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              // color: ThemeBackgroundColorPage(context),
              ),
          child: Image(image: AssetImage('assets/images/new/15.jpg')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            ElevatedButtonWidget(
              color: Colors.green[800]!,
              link: 'https://api.whatsapp.com/send?phone=201024176369',
              text: 'whatsapp',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Colors.blueAccent,
              link:
                  'https://www.facebook.com/Quality.machines.sport.maintenance',
              text: 'Facebook',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Color(0xFFE10A43),
              link: 'https://api.whatsapp.com/send?phone=201024176369',
              text: '01024176369',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Color(0xFFE10A43),
              link:
                  'https://www.facebook.com/Quality.machines.sport.maintenance',
              text: '01116531735',
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ElevatedButtonWidget(
              color: Color(0xFFE10A43),
              link:
                  'https://www.facebook.com/Quality.machines.sport.maintenance',
              text: '00221863393',
            ),
          ],
        ),
      ],
    );
  }
}

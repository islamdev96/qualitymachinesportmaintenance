import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quality/widgets/widget_nav_bar/text_button_logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../ui/pages/home_page.dart';
import '../new/Sized_box_respo.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Container(
      color: Colors.white10,
      padding: EdgeInsets.symmetric(
        horizontal: deviceType == DeviceScreenType.mobile
            ? MediaQuery.of(context).size.height * 0.1
            : deviceType == DeviceScreenType.desktop
                ? MediaQuery.of(context).size.height * 0.1
                : deviceType == DeviceScreenType.tablet
                    ? MediaQuery.of(context).size.height * 0.1
                    : MediaQuery.of(context).size.height * 0.1,
      ),
      height: deviceType == DeviceScreenType.mobile
          ? MediaQuery.of(context).size.height * 0.1
          : deviceType == DeviceScreenType.desktop
              ? MediaQuery.of(context).size.height * 0.1
              : deviceType == DeviceScreenType.tablet
                  ? MediaQuery.of(context).size.height * 0.1
                  : MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomePage.routeName);
                },
                child: AutoSizeText(
                  'الرئيسية',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: deviceType == DeviceScreenType.mobile
                        ? MediaQuery.of(context).size.width * 0.055
                        : deviceType == DeviceScreenType.desktop
                            ? MediaQuery.of(context).size.width * 0.022
                            : deviceType == DeviceScreenType.tablet
                                ? MediaQuery.of(context).size.width * 0.022
                                : MediaQuery.of(context).size.width * 0.055,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBoxRespo(
                desktop: 0.01,
                else1: 0.1,
                mobile: 0.1,
                tablet: 0.1,
              ),
              TextButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(ContactPage.routeName);
                },
                child: AutoSizeText(
                  'تواصل معنا',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: deviceType == DeviceScreenType.mobile
                        ? MediaQuery.of(context).size.width * 0.055
                        : deviceType == DeviceScreenType.desktop
                            ? MediaQuery.of(context).size.width * 0.012
                            : deviceType == DeviceScreenType.tablet
                                ? MediaQuery.of(context).size.width * 0.012
                                : MediaQuery.of(context).size.width * 0.055,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const TextButtonLogo()
        ],
      ),
    );
  }
}














// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// import '../../pages/contact_page/contact_page.dart';
// import '../../pages/home_page/home_page.dart';
// import 'text_button_logo.dart';

// class NavBarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var deviceType = getDeviceType(MediaQuery.of(context).size);

//     return Container(
//       color: Colors.white10,
//       padding: const EdgeInsets.symmetric(horizontal: 80),
//       height: deviceType == DeviceScreenType.mobile
//           ? MediaQuery.of(context).size.height * 0.1
//           : deviceType == DeviceScreenType.desktop
//               ? MediaQuery.of(context).size.height * 0.2
//               : deviceType == DeviceScreenType.tablet
//                   ? MediaQuery.of(context).size.height * 0.15
//                   : MediaQuery.of(context).size.height * 0.1,
//       child: Row(
//         children: <Widget>[
//           // const TextButtonLogo(),
//           Flexible(
//             flex: 1,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(HomePage.routeName);
//                   },
//                   child: Text(
//                     'الرئيسية',
//                     style: TextStyle(
//                       color: const Color(0xFFE10A43),
//                       fontSize: deviceType == DeviceScreenType.mobile
//                           ? MediaQuery.of(context).size.width * 0.055
//                           : deviceType == DeviceScreenType.desktop
//                               ? MediaQuery.of(context).size.width * 0.029
//                               : deviceType == DeviceScreenType.tablet
//                                   ? MediaQuery.of(context).size.width * 0.026
//                                   : MediaQuery.of(context).size.width * 0.055,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: deviceType == DeviceScreenType.mobile
//                       ? MediaQuery.of(context).size.width * 0.05
//                       : deviceType == DeviceScreenType.desktop
//                           ? MediaQuery.of(context).size.width * 0.1
//                           : deviceType == DeviceScreenType.tablet
//                               ? MediaQuery.of(context).size.width * 0.08
//                               : MediaQuery.of(context).size.width * 0.05,
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(ContactPage.routeName);
//                   },
//                   child: Text(
//                     'تواصل معنا',
//                     style: TextStyle(
//                       color: const Color(0xFFE10A43),
//                       fontSize: deviceType == DeviceScreenType.mobile
//                           ? MediaQuery.of(context).size.width * 0.055
//                           : deviceType == DeviceScreenType.desktop
//                               ? MediaQuery.of(context).size.width * 0.029
//                               : deviceType == DeviceScreenType.tablet
//                                   ? MediaQuery.of(context).size.width * 0.026
//                                   : MediaQuery.of(context).size.width * 0.055,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const TextButtonLogo(),
//         ],
//       ),
//     );
//   }
// }

// // ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:islam_sayed/model/constants.dart';
// import 'package:responsive_builder/responsive_builder.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../../../../../widgets/new/Connect_To_Phone.dart';
// import '../../../../../widgets/new/icons_and_text_widget.dart';
// import '../../../../../widgets/widget_desktop/column_text_desktop.dart';
// import '../../../../../widgets/new/center_widget.dart';
// import '../../../../../widgets/new/column_text.dart';
// import '../../../../../widgets/new/social_media.dart';

// class MaiOnePageDesktop extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Column(
//       children: [
//         CenterdedWidget(
//           child: GestureDetector(
//             child: Column(
//               children: [
//                 // const HeaderWithIcons(),
//                 // const HeaderWithImages(),
//                 SizedBox(
//                   height: size.height * 0.2,
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   child: SizedBox(
//                     child: Image.asset(
//                       'assets/images/new/15.jpg',
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.3,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.3,
//                   child: const ColumnTextDesktop(
//                     title:
//                         'أهلا بكم فى  كوالتي لصيانة الاجهزة الرياضية والمشايات',
//                     text:
//                         'تعتمد شركة كوالتي  فى الأساس على معيار الجودة ورضا العملاء وتجد ذلك ملموسا من بداية اتصالك بخدمة العملاء حتى إنتهاء الفنى من صيانة منتجك, فنحن نقدم الحلول المثلى لعملائنا حتى نحوز على رضاهم ولنساعدهم للوصول الى نمط حياة أفضل ، إضافة إلى ذلك فنحن فى مراكز خدمة عملاء شركة كوالتي لصيانة الاجهزة الرياضية والمشايات نسعى لإضافة عملاء جدد فى سجل عملائنا الذين نفخر بانضمامهم إلىنا.',
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.1,
//                 ),
//                 GridView(
//                   shrinkWrap: true,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 1.5,
//                     crossAxisSpacing: 20,
//                     mainAxisSpacing: 20,
//                   ),
//                   children: const [
//                     ColumnTextDesktop(
//                       title:
//                           'كُوَالتِي لِصيانة الأجْهزة الرِّياضيَّة والْمشَّايات',
//                       text:
//                           'نَحْن فِي شَركَة كُوَالتِي لِصيانة الأجْهزة الرِّياضيَّة والْمشَّايات نَحمِل أَنفُسنا مَعايِير صَارِمة لِلْجوْدة وَبَراعَة فِي تَصلِيح الأجْهزة ، مِمَّا يُؤدِّي إِلى اَلحُلول المميَّزة اَلتِي يَتَردَّد صداهَا مع الجمْهور . وَلكِن نَجَاحنَا بِبساطة عن طريق أَفضَل جَودَة بِأحْسن سِعْر فِي مِصْر , أيْضًا مِن خِلَال الخبْرة والالْتزام التَّامِّ بِالْمواعيد ، وَتطوِير ذَاتِي على طُول اَلطرِيق . نَحْن دائمًا نَسأَل أَنفُسنا كَيْف يُمْكننَا تَقدِيم أَفضَل حلِّ لِعملائنَا .',
//                     ),
//                     ColumnTextDesktop(
//                       title: 'لماذا تختارنا ؟',
//                       text:
//                           " لديك جهاز رياضي في المنزل وتريد صيانته فأنت تبحث علينا من خلال فريق محترف نقدم لك المزايا التالية \n- ضمان جودة الصيانة \n- المتابعة الدورية لأعمال الصيانة بدون مقابل\n- خصم للأعطال الجديدة بنسبة 25% أو لجهاز أخر لدى نفس العميل\n- التنفيذ في نفس اليوم داخل القاهرةبالإضافة لقطع غيار أصلية وضمان عدم تكرار العطل مرة أخرى ",
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: size.height * 0.01,
//                 ),
//                 const AllSocialMedia(
//                   text: '',
//                 ),
//                 SizedBox(
//                   height: size.height * 0.1,
//                 ),
//                 Image.asset(
//                   'assets/images/new/1.png',
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.1,
//                 ),
//                 const ColumnText(
//                   title: 'صيانة الاجهزة الرياضية فى مصر',
//                   text:
//                       'هل لديك مشكلة مع أي نوع من الأجهزة الرياضية؟؟  إذا فلا تترد فى التواصل معنا ليصلك مهندسى وفنيين شركة كوالتي لصيانة الاجهزة الرياضية  والمشايات حتى باب البيت فى أسرع وقت . المهندسون والفنيون مجهزون ومدربون على التعامل مع كافة انواع الأجهزة الرياضية ، مع وجود قطع الغيار الأصلية التى تتميز بطول العمر الإفتراضى . وسائل نقل لنقل الاجهزة الى مركز الصيانه فى حالة الحاجه إلى ذلك.', // overflow: TextOverflow.clip,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.1,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: const [
//                     IconsAndextwidget(
//                       image: 'assets/images/new/work.png',
//                       link: 'tel://01024176369',
//                       text: 'قطع الغيار الاصلية',
//                     ),
//                     IconsAndextwidget(
//                       image: 'assets/images/new/car.png',
//                       link: 'tel://01024176369',
//                       text: ' نصلك أينما كنت',
//                     ),
//                     IconsAndextwidget(
//                       image: 'assets/images/new/doctor.png',
//                       link: 'tel://01024176369',
//                       text: 'صيانه جميع الاجهزه ',
//                     ),
//                     IconsAndextwidget(
//                       image: 'assets/images/new/call.png',
//                       link: 'tel://01024176369',
//                       text: 'دعم فني ',
//                     ),
//                     // Spacer(),
//                   ],
//                 ),
//                 SizedBox(
//                   height: size.height * 0.2,
//                 ),

//                 const ColumnText(
//                   title: 'تــنــبــــــيـــــــه  !!',
//                   text:
//                       'تحذر شركة كوالتي لصيانة الاجهزة الرياضية والمشايات من التعامل مع أي من المراكز الأخرى والتى تحمل نفس الإسم و هذا التنبيه بمثابة إخلاء مسئوليتنا من ضمان الجهاز اذا تم التعامل خارج كوالتي لصيانة الاجهزة الرياضية والمشايات الرياضية من خلال أرقام الهواتف الموضحة داخل الموقع , المركز الرئيسي شارع الاربعين، جسر السويس، محافظة .',
//                 ),
//                 SizedBox(
//                   height: size.height * 0.2,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: ColumnText(
//                     title:
//                         'تواصل مع أحد مسئولي خدمة عملاء كوالتي لصيانة الاجهزة الرياضية والمشايات طوال أيام الأسبوع المركز الرئيسي شارع الاربعين جسر السويس ‏، ‏محافظة القاهرة‏.',
//                     text: '',
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.2,
//                 ),
//                 Column(
//                   children: [
//                     const ConnectToPhone(),
//                     SizedBox(
//                       height: size.height * 0.1,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: size.height * 0.3,
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                   child: SizedBox(
//                     child: Image.asset(
//                       'assets/images/new/15.jpg',
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.1,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: kBackgroundColor2,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.2),
//                 spreadRadius: 3,
//                 blurRadius: 4,
//                 offset: const Offset(0, 3), // changes position of shadow
//               ),
//             ],
//           ),
//           height: MediaQuery.of(context).size.height * 0.4,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               const AllSocialMedia(
//                 text: '',
//               ),
//               const Text(
//                 'Copyright © 2022   كُوَالتِي لِصيانة الأجْهزة الرِّياضيَّة والْمشَّايات ',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//               Column(
//                 children: [
//                   const Text(
//                     'This site was written by',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 8,
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       launch(
//                           'https://play.google.com/store/apps/developer?id=ISLAM+SAYED');
//                     },
//                     child: const Text(
//                       'ISLAM GLAB',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

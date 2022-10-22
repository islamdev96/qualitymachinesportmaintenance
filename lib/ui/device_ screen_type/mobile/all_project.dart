// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_import, text_direction_code_point_in_literal, unused_local_variable, deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quality_sport/widgets/carousel_slider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../model/constants.dart';
import '../../../../widgets/new/Connect_To_Phone.dart';
import '../../../../../../widgets/new/icons_and_text_widget.dart';
import '../../../../widgets/new/Sized_box_respo.dart';
import '../../../../widgets/new/column_text.dart';
import '../../../../widgets/new/social_media.dart';
import '../../../../widgets/widget_mobile/header_with_icons.dart';
import '../../../widgets/new/center_widget.dart';
import '../../../widgets/widget_mobile/header_with_image.dart';

class AllProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return Column(
      children: [
        deviceType == DeviceScreenType.mobile ||
                deviceType == DeviceScreenType.tablet
            ? Column(
                children: const [
                  HeaderWithIcons(),
                  CarouselSlider2(), // HeaderWithImages(),
                ],
              )
            : Container(
                height: 0,
              ),
        CenterdedWidget(
          child: Column(
            children: [
              GestureDetector(
                child: Column(
                  children: [
                    // const HeaderWithIcons(),
                    // const HeaderWithImages(),
                    const SizedBoxRespo(
                      mobile: 0.1,
                      desktop: 0.2,
                      tablet: 0.2,
                      else1: 0.1,
                    ),
                    Column(
                      children: const [
                        ColumnText(
                          title:
                              'أهلا بكم فى  كوالتي لصيانة الاجهزة الرياضية والمشايات',
                          text:
                              'تعتمد شركة كوالتي  فى الأساس على معيار الجودة ورضا العملاء وتجد ذلك ملموسا من بداية اتصالك بخدمة العملاء حتى إنتهاء الفنى من صيانة منتجك, فنحن نقدم الحلول المثلى لعملائنا حتى نحوز على رضاهم ولنساعدهم للوصول الى نمط حياة أفضل ، إضافة إلى ذلك فنحن فى مراكز خدمة عملاء شركة كوالتي لصيانة الاجهزة الرياضية والمشايات نسعى لإضافة عملاء جدد فى سجل عملائنا الذين نفخر بانضمامهم إلىنا .',
                        ),
                        SizedBoxRespo(
                          mobile: 0.1,
                          desktop: 0.1,
                          tablet: 0.1,
                          else1: 0.1,
                        ),
                        AllSocialMedia(),
                        SizedBoxRespo(
                          mobile: 0.1,
                          desktop: 0.1,
                          tablet: 0.1,
                          else1: 0.1,
                        ),
                        ColumnText(
                          title:
                              'كُوَالتِي لِصيانة الأجْهزة الرِّياضيَّة والْمشَّايات',
                          text:
                              'نَحْن فِي شَركَة كُوَالتِي لِصيانة الأجْهزة الرِّياضيَّة والْمشَّايات نَحمِل أَنفُسنا مَعايِير صَارِمة لِلْجوْدة وَبَراعَة فِي تَصلِيح الأجْهزة ، مِمَّا يُؤدِّي إِلى اَلحُلول المميَّزة اَلتِي يَتَردَّد صداهَا مع الجمْهور . وَلكِن نَجَاحنَا بِبساطة عن طريق أَفضَل جَودَة بِأحْسن سِعْر فِي مِصْر , أيْضًا مِن خِلَال الخبْرة والالْتزام التَّامِّ بِالْمواعيد ، وَتطوِير ذَاتِي على طُول اَلطرِيق . نَحْن دائمًا نَسأَل أَنفُسنا كَيْف يُمْكننَا تَقدِيم أَفضَل حلِّ لِعملائنَا .',
                        ),
                        SizedBoxRespo(
                          mobile: 0.3,
                          desktop: 0.1,
                          tablet: 0.1,
                          else1: 0.1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ColumnText(
                title: 'لماذا تختارنا ؟',
                text:
                    " لديك جهاز رياضي في المنزل وتريد صيانته فأنت تبحث علينا من خلال فريق محترف نقدم لك المزايا التالية \n- ضمان جودة الصيانة \n- المتابعة الدورية لأعمال الصيانة بدون مقابل\n- خصم للأعطال الجديدة بنسبة 25% أو لجهاز أخر لدى نفس العميل\n- التنفيذ في نفس اليوم داخل القاهرةبالإضافة لقطع غيار أصلية وضمان عدم تكرار العطل مرة أخرى ",
              ),
              const SizedBoxRespo(
                mobile: 0.05,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const AllSocialMedia(),
              const SizedBoxRespo(
                mobile: 0.3,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              Image.asset(
                'assets/images/new/1.png',
                fit: BoxFit.cover,
              ),
              const SizedBoxRespo(
                mobile: 0.2,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const ColumnText(
                title: 'صيانة الاجهزة الرياضية فى مصر',
                text:
                    'هل لديك مشكلة مع أي نوع من الأجهزة الرياضية؟؟  إذا فلا تترد فى التواصل معنا ليصلك مهندسى وفنيين شركة كوالتي لصيانة الاجهزة الرياضية  والمشايات حتى باب البيت فى أسرع وقت . المهندسون والفنيون مجهزون ومدربون على التعامل مع كافة انواع الأجهزة الرياضية ، مع وجود قطع الغيار الأصلية التى تتميز بطول العمر الإفتراضى . وسائل نقل لنقل الاجهزة الى مركز الصيانه فى حالة الحاجه إلى ذلك.', // overflow: TextOverflow.clip,
              ),
              const SizedBoxRespo(
                mobile: 0.2,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              Column(
                children: const [
                  IconsAndextwidget(
                    image: 'assets/images/new/work.png',
                    link: 'tel://01024176369',
                    text: 'قطع الغيار الاصلية',
                  ),
                  SizedBoxRespo(
                    mobile: 0.2,
                    desktop: 0.1,
                    tablet: 0.1,
                    else1: 0.1,
                  ),
                  IconsAndextwidget(
                    image: 'assets/images/new/car.png',
                    link: 'tel://01024176369',
                    text: ' نصلك أينما كنت',
                  ),
                  SizedBoxRespo(
                    mobile: 0.2,
                    desktop: 0.1,
                    tablet: 0.1,
                    else1: 0.1,
                  ),
                  IconsAndextwidget(
                    image: 'assets/images/new/doctor.png',
                    link: 'tel://01024176369',
                    text: 'صيانه جميع الاجهزه ',
                  ),
                  SizedBoxRespo(
                    mobile: 0.2,
                    desktop: 0.1,
                    tablet: 0.1,
                    else1: 0.1,
                  ),
                  IconsAndextwidget(
                    image: 'assets/images/new/call.png',
                    link: 'tel://01024176369',
                    text: 'دعم فني ',
                  ),
                ],
              ),
              const SizedBoxRespo(
                mobile: 0.3,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const ColumnText(
                title: 'تــنــبــــــيـــــــه  !!',
                text:
                    'تحذر شركة كوالتي لصيانة الاجهزة الرياضية والمشايات من التعامل مع أي من المراكز الأخرى والتى تحمل نفس الإسم و هذا التنبيه بمثابة إخلاء مسئوليتنا من ضمان الجهاز اذا تم التعامل خارج كوالتي لصيانة الاجهزة الرياضية والمشايات الرياضية من خلال أرقام الهواتف الموضحة داخل الموقع , المركز الرئيسي شارع الاربعين، جسر السويس، محافظة القاهرة.',
              ),
              const SizedBoxRespo(
                mobile: 0.19,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const ColumnText(
                title:
                    'تواصل مع أحد مسئولي خدمة عملاء كوالتي لصيانة الاجهزة الرياضية والمشايات طوال أيام الأسبوع المركز الرئيسي شارع الاربعين جسر السويس ‏، ‏محافظة القاهرة‏.',
                text: '',
              ),
              const SizedBoxRespo(
                mobile: 0.1,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const ConnectToPhone(),
              const SizedBoxRespo(
                mobile: 0.3,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/new/15.jpg',
                  ),
                ),
              ),
              const SizedBoxRespo(
                mobile: 0.1,
                desktop: 0.1,
                tablet: 0.1,
                else1: 0.1,
              ),
              const AllSocialMedia(),
            ],
          ),
        ),
        Container(
          color: kPrimaryColor,
          height: MediaQuery.of(context).size.height * 0.12,
          width: double.infinity,
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Copyright © 2022 Quality',
                ),
                const Text(
                  'تم كتابه الموقع بواسطه',
                ),
                InkWell(
                  onTap: () {
                    launch(
                        'https://play.google.com/store/apps/developer?id=ISLAM+SAYED');
                  },
                  child: const Text(
                    'ISLAM GLAB',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

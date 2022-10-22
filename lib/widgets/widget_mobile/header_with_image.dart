// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderWithImages extends StatelessWidget {
  const HeaderWithImages({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,

        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/12.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/2.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/13.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/14.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/4.png',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/6.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     height: size.height * 0.52,
            //     child: Image.asset(
            //       'assets/images/new/7.jpg',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 46 + kDefaultPadding),
            //   child: SizedBox(
            //     child: Image.asset(
            //       'assets/images/new/4.png',
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}

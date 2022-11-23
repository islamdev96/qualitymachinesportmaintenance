import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../widgets/container_image_widget.dart';

class CarouselSliderDesktop extends StatelessWidget {
  const CarouselSliderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        //1st Image of Slider

        ContainerImageWidget(
          image: 'assets/images/new_image/1.png',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/2.png',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/3.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/4.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/5.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/6.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/new_image/7.jpg',
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        clipBehavior: Clip.none,
        height: MediaQuery.of(context).size.height * 0.7,

        scrollDirection: Axis.horizontal,
        enlargeCenterPage: true,
        autoPlay: true,
        // reverse: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        // autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(milliseconds: 3000),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
    required this.assetImages,
  });

  final List<String> assetImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CarouselSlider.builder(
        itemCount: assetImages.length,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final assetImagePath = assetImages[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  assetImagePath,
                  fit: BoxFit.cover,
                  width: 1000,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/Carousel_Slider_widget.dart';
import 'package:flutter_application_4/widget/booking_service.dart';
import 'package:flutter_application_4/widget/custom_package_widgrt.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> assetImages = [
    'images/Frame 3659.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'ECO',
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookingServiceWidget(),
              Row(
                children: [
                  Text(
                    'offer',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CarouselSliderWidget(assetImages: assetImages),
              Row(
                children: [
                  Text(
                    'package',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CustomPackageWidget(
                image: 'images/Rectangle 1.png',
              ),
              CustomPackageWidget(
                image: 'images/Rectangle 1 (2).png',
              ),
              CustomPackageWidget(
                image: 'images/Rectangle 1 (1).png',
              ),
              CustomPackageWidget(
                image: 'images/Rectangle 1 (3).png',
              ),
              CustomPackageWidget(
                image: 'images/Rectangle 1 (4).png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

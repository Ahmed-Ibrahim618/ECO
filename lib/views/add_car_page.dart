import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/select_package.dart';
import 'package:flutter_application_4/widget/image_picker_widget.dart';
import 'package:flutter_application_4/widget/brand_dropdown_widget.dart';
import 'package:flutter_application_4/widget/color_picker_widget.dart';
import 'package:flutter_application_4/widget/model_dropdown_widget.dart';
import 'package:flutter_application_4/widget/plate_number_widget.dart';
import 'package:flutter_application_4/widget/size_dropdown_widget.dart';

class AddCarPage extends StatelessWidget {
  const AddCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.lightBlue,
            ),
          ),
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'back',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Add your vehicle ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Enter your car details ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizeDropdownWidget(),
                BrandDropdownWidget(),
                ModelDropdownWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Plate number',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                    PlateNumber(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'select color',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                ColorPickerWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'upload image',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                ImagePickerScreen(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectPackage()));
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

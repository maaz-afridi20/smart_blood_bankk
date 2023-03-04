import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/colors.dart';
import '../consts/text_style.dart';

class ContainerButton extends StatelessWidget {
  final String buttonText;
  const ContainerButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .08,
      width: Get.width * 1,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: customTextStyle(
            color: whitecolor,
            weight: FontWeight.bold,
            size: 14,
          ),
        ),
      ),
    );
  }
}

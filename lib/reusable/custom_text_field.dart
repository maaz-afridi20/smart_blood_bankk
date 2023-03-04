import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../consts/text_style.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        hintStyle: customTextStyle(
          color: lightgrey,
        ),
      ),
    );
  }
}

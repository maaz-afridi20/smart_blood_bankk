import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../consts/text_style.dart';

Widget myCustomTextfield({hinText, myController, required validatorValue}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return '$validatorValue';
      } else {
        return '';
      }
    },
    controller: myController,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      hintText: hinText,
      hintStyle: customTextStyle(
        color: lightgrey,
      ),
    ),
  );
}

//
//
//
//
//
//
//
//
//
// ignore: must_be_immutable
// class CustomTextField extends StatelessWidget {
//   String hintText;

//   CustomTextField({super.key, required this.hintText, required myController});

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: myController,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         hintText: hintText,
//         hintStyle: customTextStyle(
//           color: lightgrey,
//         ),
//       ),
//     );
//   }
// }
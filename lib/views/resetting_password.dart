import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/views/change_password.dart';
import '../consts/colors.dart';
import '../consts/const_texts.dart';
import '../consts/text_style.dart';
import '../reusable/container_button.dart';
import '../reusable/custom_text_field.dart';

class ResettinPassword extends StatelessWidget {
  const ResettinPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  resetpass,
                  style: customTextStyle(
                    size: 16,
                    color: blackk,
                    weight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  loginToAcc,
                  style: customTextStyle(
                    size: 12,
                    color: lightgrey,
                  ),
                ),
                const SizedBox(height: 50),
                myCustomTextfield(
                    hinText: 'enter phone number', validatorValue: 'phone number missing'),
                // CustomTextField(hintText: 'enter phone number'),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ChangePassword());
                  },
                  child: containerButtonn(
                    buttonText: 'Sign In',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

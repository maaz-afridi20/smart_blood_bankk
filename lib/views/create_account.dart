import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/reusable/container_button.dart';
import 'package:smart_blood_bank/reusable/custom_text_field.dart';
import 'package:smart_blood_bank/views/enter_otp_screen.dart';
import 'package:smart_blood_bank/views/login.dart';

import '../consts/colors.dart';
import '../consts/const_texts.dart';
import '../consts/text_style.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Wellcome To Smart Blood Bank',
                    style: customTextStyle(
                      size: 16,
                      color: blackk,
                      weight: FontWeight.w600,
                      // family: 'light',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Creat your account',
                    style: customTextStyle(
                      size: 12,
                      color: lightgrey,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(hintText: 'enter phone number'),
                  const SizedBox(height: 12),
                  CustomTextField(hintText: 'enter password'),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        alreadyAccount,
                        style: customTextStyle(
                          color: lightgrey,
                          size: 12,
                          weight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const Login());
                        },
                        child: Text(
                          loginn,
                          style: customTextStyle(
                            color: bluecolor,
                            size: 12,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const EnterOtpScreen());
                    },
                    child: const ContainerButton(buttonText: 'Sign Up'),
                  ),
                  // Text(
                  //   'cheking',
                  //   style: GoogleFonts.poppins(
                  //     textStyle: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

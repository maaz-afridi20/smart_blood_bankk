import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/views/create_account.dart';
import 'package:smart_blood_bank/views/nav_bar_home.dart';
import 'package:smart_blood_bank/views/resetting_password.dart';
import '../consts/colors.dart';
import '../consts/const_texts.dart';
import '../consts/text_style.dart';
import '../reusable/container_button.dart';
import '../reusable/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Wellcome To Smart Blood Bank',
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
                const SizedBox(height: 40),
                myCustomTextfield(
                    hinText: 'enter phone number', validatorValue: 'Enter phone number'),
                const SizedBox(height: 12),
                myCustomTextfield(hinText: 'enter password', validatorValue: 'Enter password'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      dontacc,
                      style: customTextStyle(
                        color: lightgrey,
                        size: 12,
                        weight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CreateAccount());
                      },
                      child: Text(
                        register,
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
                    Get.to(() => const NavBarHome());
                  },
                  child: containerButtonn(buttonText: 'Sign In'),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const ResettinPassword(),
                    );
                  },
                  child: Text(
                    forgot,
                    style: customTextStyle(
                      weight: FontWeight.bold,
                      size: 12,
                      color: bluecolor,
                    ),
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

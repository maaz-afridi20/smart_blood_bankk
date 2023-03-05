import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/reusable/custom_text_field.dart';
import 'package:smart_blood_bank/views/nav_bar_home.dart';
import '../consts/colors.dart';
import '../consts/text_style.dart';
import '../reusable/container_button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Change your password',
                      style: customTextStyle(
                        size: 16,
                        color: blackk,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 60),
                    myCustomTextfield(
                      hinText: 'Enter new password',
                    ),
                    const SizedBox(height: 12),
                    myCustomTextfield(
                      hinText: 'Confirm new password',
                    ),
                    const SizedBox(height: 24),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const NavBarHome());
                        },
                        child: containerButtonn(buttonText: 'Change password')),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

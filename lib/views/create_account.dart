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
  CreateAccount({super.key});

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final myformkey = GlobalKey<FormState>();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: myformkey,
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
                    myCustomTextfield(
                      myKeyboardtype: TextInputType.number,
                      validatorValue: 'enter phone number',
                      hinText: 'enter phone number',
                      myController: phoneController,
                    ),
                    const SizedBox(height: 12),
                    myCustomTextfield(
                      validatorValue: 'enter password',
                      hinText: 'enter password',
                      myController: passwordController,
                    ),
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
                    containerButtonn(
                        buttonText: 'Sign Up',
                        myOnTap: () {
                          if (myformkey.currentState!.validate()) {}
                        }),
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

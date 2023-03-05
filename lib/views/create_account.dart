import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/reusable/container_button.dart';
import 'package:smart_blood_bank/reusable/custom_text_field.dart';
import 'package:smart_blood_bank/views/login.dart';
import 'package:smart_blood_bank/views/nav_bar_home.dart';

import '../consts/colors.dart';
import '../consts/const_texts.dart';
import '../consts/text_style.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final myformkey = GlobalKey<FormState>();

  bool passToggle = false;

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
                      myvalidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter phone number';
                        }
                      },
                      myKeyboardtype: TextInputType.number,
                      hinText: 'enter phone number',
                      myController: phoneController,
                    ),
                    const SizedBox(height: 12),
                    myCustomTextfield(
                      myvalidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter password';
                        } else if (passwordController.text.length < 8) {
                          return "Password should be at least 8 characters";
                        }
                      },
                      hinText: 'enter password',
                      obsecure: passToggle,
                      myController: passwordController,
                      sufficIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: passToggle
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off_outlined),
                      ),
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
                            Get.to(() => Login());
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
                        if (myformkey.currentState!.validate()) {
                          phoneController.clear();
                          passwordController.clear();
                          Get.to(() => const NavBarHome());
                        }
                      },
                    ),
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

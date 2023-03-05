import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/reusable/custom_text_field.dart';
import 'package:smart_blood_bank/views/nav_bar_home.dart';

import '../consts/colors.dart';
import '../consts/text_style.dart';
import '../reusable/container_button.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  bool passToggle = false;
  bool confirmPassToggle = false;

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Form(
            key: formkey,
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
                        myController: passController,
                        obsecure: passToggle,
                        sufficIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: passToggle
                              ? const Icon(Icons.visibility)
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                ),
                        ),
                        myvalidator: (value) {
                          if (passController.text.isEmpty) {
                            return 'enter password';
                          } else if (!passController.text.contains(
                                RegExp('[!@#%^&*()-._]'),
                              ) ||
                              passController.text.length < 8) {
                            return 'length should be 8 and must contains special characters';
                          }
                        },
                        hinText: 'Enter new password',
                      ),
                      const SizedBox(height: 12),
                      myCustomTextfield(
                        obsecure: confirmPassToggle,
                        myController: confirmPassController,
                        sufficIcon: InkWell(
                          onTap: () {
                            setState(() {
                              confirmPassToggle = !confirmPassToggle;
                            });
                          },
                          child: confirmPassToggle
                              ? const Icon(Icons.visibility)
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                ),
                        ),
                        myvalidator: (value) {
                          if (confirmPassController.text.isEmpty) {
                            return 'confirm password';
                          } else if (!confirmPassController.text.contains(
                                RegExp('[!@#%^&*()-._]'),
                              ) ||
                              confirmPassController.text.length < 8) {
                            return 'length should be 8 and must contains special characters';
                          }
                        },
                        hinText: 'Confirm new password',
                      ),
                      const SizedBox(height: 24),
                      containerButtonn(
                          myOnTap: () {
                            if (formkey.currentState!.validate()) {
                              passController.clear();
                              passController.text.trim();
                              confirmPassController.clear();
                              confirmPassController.text.trim();
                              Get.to(() => const NavBarHome());
                            }
                          },
                          buttonText: 'Change password'),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// NavBarHome
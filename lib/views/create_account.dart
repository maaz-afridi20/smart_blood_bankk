import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/reusable/container_button.dart';
import 'package:smart_blood_bank/reusable/country_picker.dart';
import 'package:smart_blood_bank/reusable/custom_text_field.dart';
import 'package:smart_blood_bank/views/login.dart';

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
  MyCountryPickerClass selectCountry = MyCountryPickerClass();

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );
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
                        onchanged: (value) {
                          setState(() {
                            phoneController.text = value;
                          });
                        },
                        preficIcon: InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 500,
                              ),
                              onSelect: (value) {
                                setState(
                                  () {
                                    selectCountry.selectedCountry = value;
                                  },
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 12,
                            ),
                            child: Text(
                              '${selectCountry.selectedCountry.flagEmoji} + ${selectCountry.selectedCountry.phoneCode}',
                              style: customTextStyle(
                                size: 18,
                                color: blackk,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        myvalidator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter phone number';
                          }
                        },
                        myKeyboardtype: TextInputType.number,
                        hinText: 'enter phone number',
                        myController: phoneController,
                        sufficIcon: phoneController.text.length >= 8
                            ? Container(
                                margin: const EdgeInsets.all(10),
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: const Icon(
                                  Icons.done,
                                  color: whitecolor,
                                  size: 20,
                                ),
                              )
                            : null),
                    const SizedBox(height: 12),
                    myCustomTextfield(
                      myvalidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter password';
                        } else if (!passwordController.text.contains(
                              RegExp('[!@#%^&*()-._]'),
                            ) ||
                            passwordController.text.length < 8) {
                          return 'length should be 8 and must contains special characters';
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
                          // Get.to(() => const NavBarHome());
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

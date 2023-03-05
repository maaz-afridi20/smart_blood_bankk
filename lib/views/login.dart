import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/views/create_account.dart';
import 'package:smart_blood_bank/views/resetting_password.dart';
import '../consts/colors.dart';
import '../consts/const_texts.dart';
import '../consts/text_style.dart';
import '../reusable/container_button.dart';
import '../reusable/custom_text_field.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  myController: numberController,
                  myKeyboardtype: TextInputType.number,
                  hinText: 'enter phone number',
                ),
                const SizedBox(height: 12),
                myCustomTextfield(
                  myController: passwordController,
                  hinText: 'enter password',
                ),
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
                containerButtonn(
                  buttonText: 'Sign In',
                  myOnTap: () {},
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

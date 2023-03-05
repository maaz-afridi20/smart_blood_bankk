import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_blood_bank/consts/colors.dart';
import 'package:smart_blood_bank/views/create_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: redcolor,
          elevation: 0,
        ),
      ),
      home: CreateAccount(),
    );
  }
}

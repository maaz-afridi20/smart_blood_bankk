import 'package:flutter/material.dart';

class BloodBanks extends StatelessWidget {
  const BloodBanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Blood banks'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: Lottie.asset('lottie/setting.json'),
        ),
      ),
    );
  }
}

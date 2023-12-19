import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: 400,
          child: Lottie.asset('lottie/search.json'),
        ),
      ),
    );
  }
}

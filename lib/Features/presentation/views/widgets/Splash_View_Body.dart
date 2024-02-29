import 'package:ecommerce_get/constants.dart';
import 'package:flutter/material.dart';

class SplshViewBody extends StatelessWidget {
  const SplshViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(kLogo1),
        const SizedBox(
          height: 15,
        ),
        const Text(
          textAlign: TextAlign.center,
          'Read free Books',
        ),
      ],
    );
  }
}

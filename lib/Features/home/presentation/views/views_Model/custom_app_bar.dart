import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 28, bottom: 16, right: 12),
        child: Row(
          children: [
            Image.asset(
              kLogo1,
              width: 80,
              height: 18,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

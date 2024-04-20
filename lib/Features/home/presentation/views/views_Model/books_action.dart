import "package:ecommerce_get/Core/Widgets/custom_buttom.dart";
import "package:flutter/material.dart";

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          text: '19.9',
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          textColor: Colors.black,
          backgroundColor: Colors.white,
        )),
        Expanded(
            child: CustomButton(
          fontSize: 16,
          text: 'Free Preview',
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          textColor: Colors.white,
          backgroundColor: Color(0xffEF8262),
        )),
      ],
    );
  }
}

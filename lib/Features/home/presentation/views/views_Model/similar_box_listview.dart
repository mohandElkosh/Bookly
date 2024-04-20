import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage();
          }),
    );
  }
}

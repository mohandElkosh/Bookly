import 'package:ecommerce_get/Core/utils/style.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/book_rating.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/books_action.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_book_details_app_bar.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_book_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book ',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kibling ',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}

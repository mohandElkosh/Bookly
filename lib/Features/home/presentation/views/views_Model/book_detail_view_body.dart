import 'package:ecommerce_get/Features/home/presentation/views/views_Model/books_details_section.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

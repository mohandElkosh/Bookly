import 'package:ecommerce_get/Core/utils/style.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/book_rating.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/books_action.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_book_details_app_bar.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_book_image.dart';
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
          child: const CustomBookImage(
            imageUrl:
                'https://www.google.com/imgres?q=images%20png&imgurl=https%3A%2F%2Fimages.rawpixel.com%2Fimage_png_800%2FcHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsb2ZmaWNlMl9kaWdpdGFsX3BhaW50X21pbmltYWxfaWxsdXN0cmF0aW9uX29mX2NsZWFuX2p1bl8wNzUzYTY0ZC03ZDYxLTRjZjItYmI4YS0wNGMzMjFhYjViYzBfMS5wbmc.png&imgrefurl=https%3A%2F%2Fwww.rawpixel.com%2Fsearch%2Fpng&docid=RiT3k6FutwWm3M&tbnid=1pAj1mf6SVTa6M&vet=12ahUKEwiP6MaykYmGAxVmUqQEHfz-C3gQM3oECGQQAA..i&w=800&h=533&hcb=2&ved=2ahUKEwiP6MaykYmGAxVmUqQEHfz-C3gQM3oECGQQAA',
          ),
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

import 'package:ecommerce_get/Features/home/presentation/views/views_Model/similar_box_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        const SimilarBoxListView(),
      ],
    );
  }
}

import 'package:ecommerce_get/Features/Search/presentation/Views/Widgets/custom_search_textfield.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../Core/utils/style.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text('Search Result', style: Styles.textStyle18),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListViewItem(),
          );
        });
  }
}

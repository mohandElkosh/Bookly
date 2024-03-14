import 'package:ecommerce_get/Core/utils/style.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/best_seller_listview_item.dart';
import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'views_Model/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureListViewItem(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

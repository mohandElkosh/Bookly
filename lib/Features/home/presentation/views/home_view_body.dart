import 'package:ecommerce_get/Features/home/presentation/views/views_Model/custom_listview_item.dart';
import 'package:flutter/material.dart';

import 'views_Model/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatureListViewItem(),
      ],
    );
  }
}

import 'package:cgc_ecom_final/view/home/components/popular_category/popular_category_loading_card.dart';
import 'package:flutter/material.dart';

class PopularProductLoading extends StatelessWidget {
  const PopularProductLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) => const PopularCategoryLoadingCard()),
    );
  }
}

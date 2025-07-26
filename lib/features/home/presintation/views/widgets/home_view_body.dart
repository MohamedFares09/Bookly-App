import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListViewItems(),
          Text(
            "Best Seller",
            style: Styles.titleMediumBlod,
          )
        ],
      ),
    );
  }
}

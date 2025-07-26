
import 'package:bookly_app/features/home/presintation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomItem();
          }),
    );
  }
}

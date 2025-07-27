import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/app_bar_book_details.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomBookImage(),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: Styles.text30WNormal.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.text18W600,
          ),
        )
      ],
    );
  }
}

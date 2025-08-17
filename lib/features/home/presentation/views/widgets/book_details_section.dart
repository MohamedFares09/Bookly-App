import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class DetailsBookSection extends StatelessWidget {
  const DetailsBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child: CustomBookImage(imageUrl: 'https://share.google/images/AmV9apaYZwH0VwruP',),
        ),
        SizedBox(
          height: 20,
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
        ),
        RatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}

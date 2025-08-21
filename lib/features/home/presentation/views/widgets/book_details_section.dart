import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/app_bar_book_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class DetailsBookSection extends StatelessWidget {
  const DetailsBookSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks!.smallThumbnail ?? "",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo!.title!,
          style: Styles.text18W600.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo!.authors?[0] ?? "",
            style: Styles.text18W600,
          ),
        ),
        RatingBook(
          rating: 4.7,
          count: 52,
        ),
      ],
    );
  }
}

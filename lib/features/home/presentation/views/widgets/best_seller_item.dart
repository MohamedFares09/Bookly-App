import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.id , extra: bookModel);
        
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail ?? ""),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    bookModel.volumeInfo!.authors?[0] ?? "J.K. Rowling",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.text18W600,
                      ),
                      Spacer(),
                      RatingBook(
                        rating: 0,
                        count: 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

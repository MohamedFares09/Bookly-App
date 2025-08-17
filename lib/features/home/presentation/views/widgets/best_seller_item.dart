import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/NewsedBooks/newsed_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBookCubit, NewsedBookState>(
      builder: (context, state) {
        if (state is NewsedBookSuccess) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(BookDetailsView.id);
            },
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 2.7 / 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsData.imageTest),
                        ),
                      ),
                    ),
                  ),
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
                            "Harry Potter and the Golbet of Fire",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("J.K. Powing"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "19.99",
                              style: Styles.text18W600,
                            ),
                            Spacer(),
                            RatingBook()
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else if (state is NewsedBookFaileur) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

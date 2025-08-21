
import 'package:bookly_app/core/widgets/custom_error_widget.dart';

import 'package:bookly_app/features/home/presentation/view_model/NewsedBooks/newsed_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBestSellerItem extends StatelessWidget {
  const  ListViewBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBookCubit, NewsedBookState>(
      builder: (context, state) {
        if (state is NewsedBookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: BestSellerItem(
                    bookModel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is NewsedBookFaileur) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

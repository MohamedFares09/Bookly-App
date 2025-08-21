import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/Featured%20Books/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuceess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.book.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(BookDetailsView.id , extra: state.book[index]);
                      },
                      child: CustomBookImage(
                        imageUrl:
                            state.book[index].volumeInfo!.imageLinks!.thumbnail ??
                                "",
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeatureBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

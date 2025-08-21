import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/Similer%20Books/similer_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/Similer%20Books/similer_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewItemsBookDetails extends StatelessWidget {
  const ListViewItemsBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo!.imageLinks!.smallThumbnail??"" ,
                    ),
                  );
                }),
          );
        } else if (state is SimilerBooksFaileur) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

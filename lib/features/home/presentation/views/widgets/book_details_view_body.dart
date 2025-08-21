import 'package:bookly_app/core/utils/function/url_custome_launcher.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/list_view_item_book_details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsBookSection(
          bookModel: bookModel,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  bookModel: bookModel,
                  text: "Free",
                ),
              ),
              Expanded(
                child: CustomButton(
                  onPressed: () async {
                    urlCustomLancher(
                        context, bookModel.volumeInfo!.previewLink);
                  },
                  bookModel: bookModel,
                  text: getText(bookModel),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListViewItemsBookDetails()
      ],
    );
  }

  String getText(BookModel bookmodel) {
    if (bookmodel.volumeInfo!.previewLink == null) {
      return "Not Avaliable";
    } else {
      return "Preview";
    }
  }
}

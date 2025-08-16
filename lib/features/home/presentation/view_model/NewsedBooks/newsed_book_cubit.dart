import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newsed_book_state.dart';

class NewsedBookCubit extends Cubit<NewsedBookState> {
  NewsedBookCubit(this.homeRepo) : super(NewsedBookInitial());
    final HomeRepo homeRepo;
  Future<void> getBestSellerBooks() async {
    var result = await homeRepo.getBestSellerBooks();
    result.fold((failuer) {
      emit(
        NewsedBookFaileur(failuer.errorMessage),
      );
    }, (books) {
      emit(
        NewsedBookSuccess(books),
      );
    });
  }
}

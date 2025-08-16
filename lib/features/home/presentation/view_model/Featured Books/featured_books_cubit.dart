import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> getBooks() async {
    var result = await homeRepo.getBooks();
    result.fold((failuer) {
      emit(
        FeatureBooksFailuer(failuer.errorMessage),
      );
    }, (books) {
      emit(
        FeatureBooksSuceess(books),
      );
    });
  }
}

import 'package:bookly_app/features/home/data/Repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_model/Similer%20Books/similer_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState>{
  SimilerBooksCubit(this.homerepo):super(SimilerBooksInit());

  final HomeRepo homerepo ; 
  Future<void> getSimilerBooks({required String category}) async {
    var result = await homerepo.getSimilerBooks(categeroy: category);
    result.fold((failuer) {
      emit(
        SimilerBooksFaileur(  failuer.errorMessage),
      );
    }, (books) {
      emit(
        SimilerBooksSuccess( books),
      );
    });
  }
}
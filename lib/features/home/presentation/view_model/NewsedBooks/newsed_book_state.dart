part of 'newsed_book_cubit.dart';

sealed class NewsedBookState extends Equatable {
  const NewsedBookState();

  @override
  List<Object> get props => [];
}

final class NewsedBookInitial extends NewsedBookState {}

final class NewsedBookLoading extends NewsedBookState {}

final class NewsedBookSuccess extends NewsedBookState {
  final List<BookModel> books;

const NewsedBookSuccess(this.books);
}

final class NewsedBookFaileur extends NewsedBookState {
  final String errorMessage;

  const NewsedBookFaileur(this.errorMessage);
}

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

final class SimilerBooksInit extends SimilerBooksState {}

final class SimilerBooksLoading extends SimilerBooksState {}

final class SimilerBooksFaileur extends SimilerBooksState {
  final String errMessage;

 const SimilerBooksFaileur( this.errMessage);
}

final class SimilerBooksSuccess extends SimilerBooksState {
  final List<BookModel> books ;

const SimilerBooksSuccess( this.books); 
}

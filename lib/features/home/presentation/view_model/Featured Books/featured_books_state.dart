part of 'featured_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksSuceess extends FeatureBooksState {
  final List<BookModel> book;

const  FeatureBooksSuceess(this.book);
}

final class FeatureBooksFailuer extends FeatureBooksState {
  final String errorMessage;

const  FeatureBooksFailuer(this.errorMessage);
}

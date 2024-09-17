part of 'images_books_cubit.dart';

sealed class ImagesBooksState extends Equatable {
  const ImagesBooksState();

  @override
  List<Object> get props => [];
}

final class ImagesBooksInitial extends ImagesBooksState {}
final class ImagesBooksLoading extends ImagesBooksState {}
final class ImagesBooksSuccess extends ImagesBooksState {
  final List<BookModel> bookmod;

  ImagesBooksSuccess({required this.bookmod});
}
final class ImagesBooksFailure extends ImagesBooksState {
  final String error;

  ImagesBooksFailure({required this.error});
}
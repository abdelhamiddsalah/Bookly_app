part of 'details_cubit_cubit.dart';

sealed class DetailsCubitState extends Equatable {
  const DetailsCubitState();

  @override
  List<Object> get props => [];
}

final class DetailsCubitInitial extends DetailsCubitState {}

final class DetailsCubitLoading extends DetailsCubitState {}

final class DetailsCubitSuccess extends DetailsCubitState {
  final List<BookModel> bookmod;

  DetailsCubitSuccess({required this.bookmod});
}

final class DetailsCubitFailure extends DetailsCubitState {
  final String error;

  DetailsCubitFailure({required this.error});
}

import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

sealed class HomecubitState extends Equatable {
  const HomecubitState();

  @override
  List<Object> get props => [];
}

final class HomecubitInitial extends HomecubitState {}

final class HomecubitLoading extends HomecubitState {}

final class HomecubitSuccess extends HomecubitState {
  final List<BookModel> bookmod;

  HomecubitSuccess({required this.bookmod});
}

final class HomecubitFailure extends HomecubitState {
  final String error;

  HomecubitFailure({required this.error});
}

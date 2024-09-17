import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Home/data/Repos/Home_Repo.dart';
import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

part 'details_cubit_state.dart';

class DetailsCubitCubit extends Cubit<DetailsCubitState> {
  DetailsCubitCubit(this._homeRepo) : super(DetailsCubitInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchdetailsBooks() async {
    emit(DetailsCubitLoading());

    var result = await _homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(DetailsCubitFailure(error: failure.errorMessage));
    }, (books) {
      emit(DetailsCubitSuccess(bookmod: books));
    });
  }
}

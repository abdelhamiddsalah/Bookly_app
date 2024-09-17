import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Home/data/Repos/Home_Repo.dart';
import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

part 'images_books_state.dart';

class ImagesBooksCubit extends Cubit<ImagesBooksState> {
  ImagesBooksCubit(this._homeRepo) : super(ImagesBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchImaesBooks({required String category}) async {
    emit(ImagesBooksLoading());

    var result = await _homeRepo.fetchImaesBooks(category:  category);
    result.fold((failure) {
      emit(ImagesBooksFailure(error: failure.errorMessage));
    }, (books) {
      emit(ImagesBooksSuccess(bookmod: books));
    });
  }
}

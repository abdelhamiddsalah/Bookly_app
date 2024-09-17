import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Home/data/Repos/Home_Repo.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/Home_cubit/homecubit_state.dart';


class HomecubitCubit extends Cubit<HomecubitState> {
  HomecubitCubit(this._homeRepo) : super(HomecubitInitial());
  final HomeRepo _homeRepo;
    Future<void> fetchBooks() async {
    emit(HomecubitLoading());
         var result = await _homeRepo.fetchBestsellerBooks(); 
         result.fold((failure){
         emit(HomecubitFailure(error: failure.errorMessage));
         }, (books){
          emit(HomecubitSuccess(bookmod: books));
         });
    }
    }
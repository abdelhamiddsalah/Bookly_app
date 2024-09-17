import 'package:booklyapp/Features/Home/presentation/view_models/Detailscubit/details_cubit_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/ItemBook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listviewver extends StatelessWidget {
  const Listviewver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubitCubit, DetailsCubitState>(
      builder: (context, state) {
         if (state is DetailsCubitSuccess) {
          return Expanded(
          child: ListView.builder(
            itemCount: state.bookmod.length,
            itemBuilder: (context, index) {
              return ItemBook(bookmodel: state.bookmod[index],);
            },
          ),
        );

         }else if (state is DetailsCubitFailure) {
          return Center(
            child: Text('${state.error}'),
          );
        } else {
          return Center(child: CircularProgressIndicator(),);
        }
        
      },
    );
  }
}

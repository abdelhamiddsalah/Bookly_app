import 'package:booklyapp/Features/Home/presentation/view_models/Home_cubit/homecubit_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/Home_cubit/homecubit_state.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/CustomListview1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListviewsHor extends StatelessWidget {
  const ListviewsHor({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomecubitCubit, HomecubitState>(
      builder: (context, state) {
        if (state is HomecubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.bookmod.length, 
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MaterialButton(
                  onPressed: () {
                    GoRouter.of(context).push('/detailsview', extra: state.bookmod[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        CustomBookImage(imageurl: state.bookmod[index].volumeInfo!.imageLinks!.thumbnail,),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is HomecubitFailure) {
          return Center(
            child: Text('Failed to load data: ${state.error}'),
          );
        } else {
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}

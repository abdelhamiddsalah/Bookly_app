import 'package:booklyapp/Features/Home/presentation/view_models/ImagesBooksCubit/images_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/CustomListview1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewInDetails extends StatelessWidget {
  const ListviewInDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesBooksCubit, ImagesBooksState>(
      builder: (context, state) {
        if (state is ImagesBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
             itemCount: state.bookmod.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CustomBookImage(
                  imageurl: state.bookmod[index].volumeInfo?.imageLinks?.thumbnail?? '',
                ),
              );
            },
          ),
        );
        }else if (state is ImagesBooksFailure) {
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

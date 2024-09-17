import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/ImagesBooksCubit/images_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/ButtonsInDetailsView.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/CustomAppbarinDetails.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/CustomListview1.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/ListViewInDetails.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/Rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<ImagesBooksCubit, ImagesBooksState>(
      builder: (context, state) {
        if (state is ImagesBooksSuccess) {
           return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomeAppbarinDetails(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: CustomBookImage(
                    imageurl: bookmodel.volumeInfo?.imageLinks?.thumbnail??'',
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  bookmodel.volumeInfo?.title??'',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                    bookmodel.volumeInfo?.authors[0]??'',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withOpacity(0.7)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Rating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mrating: '',
                  lrating: '',
                ),
                SizedBox(
                  height: 15,
                ),
                Buttonsindetailsview(),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                SizedBox(
                  height: 10,
                ),
                ListviewInDetails()
              ],
            ),
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

import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/ImagesBooksCubit/images_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/Details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.bookmodel});
final BookModel bookmodel;
  @override
  
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    BlocProvider.of<ImagesBooksCubit>(context).fetchImaesBooks(category: widget.bookmodel.volumeInfo?.categories[0]?? 'yes');
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  DetailsViewBody(bookmodel: widget.bookmodel,),
      );
  }
}

import 'package:booklyapp/Constants.dart';
import 'package:booklyapp/Features/Home/data/Repos/HomeRepoImp.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/Detailscubit/details_cubit_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/Home_cubit/homecubit_cubit.dart';
import 'package:booklyapp/core/Utiels/Api_Services.dart';
import 'package:booklyapp/core/Utiels/AppRoutes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
   return MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => HomecubitCubit(Homerepoimp(apiServices: ApiServices(Dio())))..fetchBooks(),
      ),
      BlocProvider(
        create: (context) => DetailsCubitCubit(Homerepoimp(apiServices: ApiServices(Dio())))..fetchdetailsBooks(),
      ),
    ],
     child: MaterialApp.router(
        routerConfig: Approutes.router,   
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ScaffoldBackColor, 
        ),
        debugShowCheckedModeBanner: false,
      ),
   );
    }
    
  }


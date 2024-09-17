import 'package:booklyapp/Features/Home/data/Repos/HomeRepoImp.dart';
import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/Features/Home/presentation/view_models/ImagesBooksCubit/images_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/Details_view.dart';
import 'package:booklyapp/Features/Home/presentation/views/Home_view.dart';
import 'package:booklyapp/Features/SearchPage/presentation/views/Search_View.dart';
import 'package:booklyapp/Features/Splash/presentation/views/Splash_view.dart';
import 'package:booklyapp/core/Utiels/Api_Services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approutes {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeview',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/detailsview',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => ImagesBooksCubit(Homerepoimp(apiServices: ApiServices(Dio()))),
            child:  DetailsView(bookmodel: state.extra as BookModel,),
          );
        },
      ),
      GoRoute(
        path: '/searchview',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}

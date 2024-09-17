import 'package:booklyapp/Features/Home/presentation/views/widgets/Homebody.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Homebody(),
    );
  }
}


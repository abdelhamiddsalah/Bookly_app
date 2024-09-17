import 'package:booklyapp/Features/Home/presentation/views/widgets/CustomAppbar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/ListviewHor.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/ListviewVer.dart';
import 'package:flutter/material.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppbar(),
          ListviewsHor(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Listviewver()
        ],
      ),
    );
  }
}

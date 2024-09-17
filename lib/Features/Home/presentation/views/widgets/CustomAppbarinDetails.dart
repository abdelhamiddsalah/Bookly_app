import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeAppbarinDetails extends StatelessWidget {
  const CustomeAppbarinDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 7),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(Icons.close)),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 24,
              ))
        ],
      ),
    );
  }
}

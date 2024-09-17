import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.mrating, required this.lrating});
  final MainAxisAlignment mainAxisAlignment;
final String mrating;
final String lrating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3),
        Text('23'),
        SizedBox(width: 6.3),
        Text('(234)'),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Buttonsindetailsview extends StatelessWidget {
  const Buttonsindetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Free',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 17),
              ),
            )),
        Container(
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Free Preview',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
            )),
      ],
    );
  }
}

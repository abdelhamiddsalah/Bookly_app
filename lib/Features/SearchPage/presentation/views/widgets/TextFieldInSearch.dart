import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldInSearch extends StatelessWidget {
  const TextFieldInSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.white)),
            hintText: 'Search',
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Opacity(
                  opacity: 0.8,
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 24,
                  ),
                ))));
  }
}

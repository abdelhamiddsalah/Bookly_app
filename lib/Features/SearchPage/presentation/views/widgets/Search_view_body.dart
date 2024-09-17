import 'package:booklyapp/Features/Home/presentation/views/widgets/ItemBook.dart';
import 'package:booklyapp/Features/SearchPage/presentation/views/widgets/TextFieldInSearch.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        children: [
          TextFieldInSearch(),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Result',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 3,
          ),
          SearchResults()
        ],
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
         // return ItemBook(bookmodel: ,);
        },
      ),
    );
  }
}

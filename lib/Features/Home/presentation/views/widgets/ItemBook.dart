import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/Rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemBook extends StatelessWidget {
  const ItemBook({super.key, required this.bookmodel});
 final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        GoRouter.of(context).push('/detailsview', extra: bookmodel);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 17),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 2.6 / 4,
                  child:Container(
                    child: CachedNetworkImage(
        imageUrl: bookmodel.volumeInfo?.imageLinks?.thumbnail ??
                          'https://via.placeholder.com/150',
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
                  )
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookmodel.volumeInfo!.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(bookmodel.volumeInfo!.authors[0], maxLines: 2,style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.6)),),
                    SizedBox(height: 3),
                    Row(
                      children: [Text('Free'), Spacer(), 
                      Rating(mrating: bookmodel.volumeInfo!.maturityRating, lrating: bookmodel.volumeInfo!.maturityRating,)],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

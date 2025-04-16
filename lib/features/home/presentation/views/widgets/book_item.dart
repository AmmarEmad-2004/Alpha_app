import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/presentation/views/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.bookModel,
  });
  final BookModel bookModel;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),

      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return BookDetailsView(bookModel: bookModel);
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
              ),
              child: CachedNetworkImage(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error_outline_rounded),
              ),
            ),
            Text(
              bookModel.volumeInfo?.title ?? 'No Title',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: Color(0xff333333),
              ),
            ),
            Text(
              bookModel.volumeInfo?.authors?.isNotEmpty == true
                  ? bookModel.volumeInfo!.authors![0]
                  : 'Unknown Author',
              style: Styles.textStyleReqular.copyWith(fontSize: 12),
            ),
            Text('P198.00', style: Styles.textStyleReqular),
          ],
        ),
      ),
    );
  }
}

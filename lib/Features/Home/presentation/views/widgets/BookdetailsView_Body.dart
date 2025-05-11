import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/BookRating.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/Bookaction.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/Custom_listview_item.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:flutter/material.dart';

class BookdetailsviewBody extends StatelessWidget {
  const BookdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
              child: Custom_listview_item(
                width: MediaQuery.of(context).size.width * .44,
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  color: Colors.white.withOpacity(0.7),
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BookRating(),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You Can also Like',
                style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}

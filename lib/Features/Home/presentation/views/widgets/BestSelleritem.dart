import 'package:booklymvvm/Constants.dart';
import 'package:booklymvvm/Core/Utils/AppRouter.dart';
import 'package:booklymvvm/Core/Utils/Styless.dart';
import 'package:booklymvvm/Features/Home/presentation/views/widgets/BookRating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSelleritem extends StatelessWidget {
  const BestSelleritem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.Kbookdetailsview);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/test_image.png')),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: KGtSectrafine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'J.K.Rowling',
                    style: Styles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    BookRating(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Book_Rating.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/action_buttom.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_detalis_app_bar.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_item.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/similar_books_list_view.dart';

import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                CustomBookDetalisAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.24,
                  ),
                  child: CustomItemImage(),
                ),
                const SizedBox(height: 20),
                Text(
                  'Harry Potter and \nthe Globet of Fire',
                  style: StyleS.textStyles30.copyWith(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'J.K. Rowling',
                    style: StyleS.textStyles20.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const BookRating(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                ),
                const SizedBox(height: 20),
                const ActionButton(),
                // save to area
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can also like',
                    style: StyleS.textStyles16.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SimilarBooksListViewImages(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Costom_similar_books_section.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Custom_books_detalis_section.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_detalis_app_bar.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                CustomBooksDetalisSection(),
                // save to area
                Expanded(child: const SizedBox(height: 50)),
                CustomSimilarBooksSection(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

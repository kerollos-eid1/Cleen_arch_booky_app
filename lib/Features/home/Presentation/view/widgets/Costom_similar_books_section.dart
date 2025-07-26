import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/similar_books_list_view.dart';
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';

class CustomSimilarBooksSection extends StatelessWidget {
  const CustomSimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like',
          style: StyleS.textStyles16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const SimilarBooksListViewImages(),
      ],
    );
  }
}

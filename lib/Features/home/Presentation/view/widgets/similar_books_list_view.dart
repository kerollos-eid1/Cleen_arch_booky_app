import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewImages extends StatelessWidget {
  const SimilarBooksListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomItemImage(),
          );
        },
      ),
    );
  }
}

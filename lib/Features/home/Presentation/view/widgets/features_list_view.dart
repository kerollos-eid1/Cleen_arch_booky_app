import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomItemImage(),
          );
        },
      ),
    );
  }
}

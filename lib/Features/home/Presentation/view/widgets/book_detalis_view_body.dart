import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_detalis_app_bar.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CustomBookDetalisAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.22,
            ),
            child: CustomItemImage(),
          ),
        ],
      ),
    );
  }
}

import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Book_Rating.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/action_buttom.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_book_item.dart';
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';

class CustomBooksDetalisSection extends StatelessWidget {
  const CustomBooksDetalisSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.24,
          ),
          child: CustomItemImage(),
        ),
        const SizedBox(height: 20),
        Text(
          'Harry Potter and \nthe Globet of Fire',
          style: StyleS.textStyles30.copyWith(fontSize: 25),
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
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 20),
        const ActionButton(),
      ],
    );
  }
}

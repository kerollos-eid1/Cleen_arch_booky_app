// ignore: file_names
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
        color: Color(0xffffdd4f,
        ),
        ),
      const  SizedBox(
        width:6.3,
        ),
        Text('4.8',
        style: StyleS.textStyles16.copyWith(
          fontWeight: FontWeight.bold
          ),
        ),
      const  SizedBox(
          width: 5,
          ),
        Text('(230)',
        style: StyleS.textStyles14.copyWith(
          color: Color(0xff707070,
          ),
          ),
        ),
      ],
    );
  }
}


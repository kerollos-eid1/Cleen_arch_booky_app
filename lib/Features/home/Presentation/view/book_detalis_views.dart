import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/book_detalis_view_body.dart';
import 'package:flutter/material.dart';

class BookDetalisViews extends StatelessWidget {
  const BookDetalisViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const BookDetalisViewBody(),
        ),
    );
  }
}

import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Custom_Best_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkwrap $ physics == follow the sliver
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListVeiwItem(),
        );
      },
    );
  }
}

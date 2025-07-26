import 'package:clean_arch_booky_app/Features/search/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:clean_arch_booky_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFeild(),
          const SizedBox(height: 15),
          Text(
            'Search Result',
            style: StyleS.textStyles18.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

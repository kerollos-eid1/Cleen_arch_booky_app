import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Custom_Best_item.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages


class BestSellerListVeiwItems extends StatelessWidget {
  const BestSellerListVeiwItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkwrap $ physics == follow the sliver
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context , index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListVeiw(),
        );
      }
    
    );
  }
}

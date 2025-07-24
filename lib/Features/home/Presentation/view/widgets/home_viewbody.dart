import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/best_seller_list_view.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/custom_app_Bar.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/features_list_view.dart';
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {


return CustomScrollView(
slivers: [
  // Used for easy scrolling
  SliverToBoxAdapter(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
 [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: const CustomAPPBar(),
  ),
  CustomBookImage(),
  const SizedBox(
    height: 40,
    ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Text('Best Seller',
    style: StyleS.textStyles18,
    ),
  ),
  const SizedBox(
    height: 20,
  ),
  
],
),
  ),
 const  SliverToBoxAdapter(
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25),
      child: BestSellerListVeiwItems(),
    ),
  )
],
);

    
  }
}


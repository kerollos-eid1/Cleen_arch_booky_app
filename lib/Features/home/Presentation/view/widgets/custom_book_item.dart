import 'package:clean_arch_booky_app/core/utils/photo/assets_photo.dart';
import 'package:flutter/material.dart';


class CustomItemImage extends StatelessWidget {
  const CustomItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsPhoto.testimage),
          ),
        ),
      ),
    );
  }
}

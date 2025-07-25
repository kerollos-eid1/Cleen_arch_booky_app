import 'package:clean_arch_booky_app/core/utils/app_router.dart';
import 'package:clean_arch_booky_app/core/utils/photo/assets_photo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAPPBar extends StatelessWidget {
  const CustomAPPBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsPhoto.Logo, height: 18),

          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

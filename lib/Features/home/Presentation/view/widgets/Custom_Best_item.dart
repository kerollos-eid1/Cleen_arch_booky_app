import 'package:clean_arch_booky_app/Features/home/Presentation/view/widgets/Book_Rating.dart';
import 'package:clean_arch_booky_app/constants.dart';
import 'package:clean_arch_booky_app/core/style.dart';
import 'package:clean_arch_booky_app/core/utils/app_router.dart';
import 'package:clean_arch_booky_app/core/utils/photo/assets_photo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListVeiw extends StatelessWidget {
  const BestSellerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kBookDetailsVeiw);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),

                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsPhoto.testimage,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.5,
                    child: Text(
                      'Harry Potter and the Globet of Fire ',
                      style: StyleS.textStyles20.copyWith(
                        fontFamily: kGtSectraFineText,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: StyleS.textStyles14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: StyleS.textStyles20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                  const    BookRating(
                        mainAxisAlignment:
                            MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

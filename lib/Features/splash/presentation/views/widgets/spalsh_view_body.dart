import 'package:clean_arch_booky_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:clean_arch_booky_app/core/utils/photo/assets_photo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() =>
      _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    // navigator to Home view page screen...
    navigatetToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsPhoto.Logo),
        SlidingText(SlidingAnimation: SlidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    // استخدامي ل slidingAnimation =>It is the controller of the animation process, meaning the thing that the animation needs.
    //tween animation =>Responsible for the entire animation process from start to finish.and send to animationcontroller.
    SlidingAnimation = Tween<Offset>(
      begin: Offset(0, 6),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigatetToHomeView() {
    // navigator to home view page screen
    Future.delayed(const Duration(seconds: 3), () {
      /*
      Get.to(
        () => const HomeView(),
        // شكل النقل الي صفحه العرض
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
      
      */
      GoRouter.of(context).push('/homeView');
    });
  }
}

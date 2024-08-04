import 'package:bookly_app_v1/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app_v1/constants.dart';
import 'package:bookly_app_v1/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    transitionHomeView();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.kLogo,
          height: 80.0,
        ),
        const SizedBox(height: 4,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1),);
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }
  void transitionHomeView() {
    Future.delayed(const Duration(seconds: 2), (){
      Get.to(()=> const HomeView(), transition: Transition.circularReveal, duration: kTransitionDuration);
    });
  }
}


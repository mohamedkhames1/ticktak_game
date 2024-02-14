import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../const.dart';
import '../../../../home/presentation/view/homeView.dart';
import 'sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initslidingAnimation();
    navigattoHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(klogo),
        const SizedBox(
          height: 4,
        ),
        slideranimation(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initslidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: const Offset(0,0))
            .animate(animationController);
    animationController.forward();
  }
  void navigattoHome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(const HomeView(),transition: Transition.fadeIn,duration:ktranstion);
    });
  }

}


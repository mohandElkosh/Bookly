import 'package:ecommerce_get/Features/home/presentation/views/home.dart';
import 'package:ecommerce_get/Features/presentation/views/widgets/slidingtext.dart';
import 'package:ecommerce_get/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplshViewBody extends StatefulWidget {
  const SplshViewBody({super.key});

  @override
  State<SplshViewBody> createState() => _SplshViewBodyState();
}

class _SplshViewBodyState extends State<SplshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // from 0 To 1
  late Animation<Offset> slidingAnimation; //object to make range out of 1 and 0
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
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
        Image.asset(kLogo1),
        const SizedBox(
          height: 15,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeView(), transition: Transition.leftToRightWithFade);
    });
  }
}

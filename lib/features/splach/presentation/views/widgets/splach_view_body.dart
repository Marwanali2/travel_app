import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/features/splach/presentation/views/widgets/sliding_image.dart';
import 'package:travel_app/features/splach/presentation/views/widgets/sliding_text.dart';

import '../../../../../constants.dart';
import '../../../../intro/presentation/views/intro_view.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({Key? key}) : super(key: key);

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> imageSlidingAnimation;

  @override
  void initState() {
    // هنا حققنا مبدئ Single responsibility principle ان كل ميثود تنفذ حاجة واحده
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  void navigateToHomeView() {
    Future.delayed(
      const Duration(seconds: 7),
      () {
        Get.to(() => const IntroView(),
            duration: kTransitionDuration,
            transition: Transition.cupertino);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(animationController);
    imageSlidingAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    // بنعملها في نهاية كل كنترولر علشان متهدرش الميموري و توقف تنفيذ الكنترولر اللي بنستخدمه مرة واحده
    animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlidingImage(imageSlidingAnimation: imageSlidingAnimation),
          const SizedBox(
            height: 10,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
}

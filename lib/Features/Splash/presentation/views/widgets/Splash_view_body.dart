import 'package:booklyapp/core/Utiels/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  @override
  void initState() {
    super.initState();
    PropsAnimation();
    NavigatetoPage();
  }

  void PropsAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    slidingText = Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void NavigatetoPage() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push('/homeview');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(Assets.logo),
          SizedBox(
            height: 4,
          ),
          AnimatedBuilder(
            animation: slidingText,
            builder: (context, _) {
              return SlideTransition(
                  position: slidingText,
                  child: Text(
                    'Read Free Books',
                    textAlign: TextAlign.center,
                  ));
            },
          ),
        ],
      ),
    );
  }
}

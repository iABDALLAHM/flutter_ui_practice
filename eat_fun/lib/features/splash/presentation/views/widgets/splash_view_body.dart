import 'package:eat_fun/core/utils/app_router.dart';
import 'package:eat_fun/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    sliderTranstion();
    _animationController.forward();
    navigateToLogin();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 120),
        FadeTransition(
          opacity: _animation,
          child: Center(
            child: Image(
              width: 250,
              height: 150,
              image: AssetImage(AssetData.mainAppLogo),
            ),
          ),
        ),

        FadeTransition(
          opacity: _animation,
          child: Image(image: AssetImage(AssetData.spalshIcon)),
        ),
      ],
    );
  }

  void sliderTranstion() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
  }

  void navigateToLogin() {
    Future.delayed(Duration(seconds: 5), () {
      GoRouter.of(context).push(AppRouter.kLoginView);
    });
  }
}

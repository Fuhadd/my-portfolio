import 'package:flutter/material.dart';

class SlideAnimationWidget extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

class SlideAnimationWidget1 extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget1(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

class SlideAnimationWidget2 extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget2(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, -1),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

class SlideAnimationWidget3 extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget3(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

class SlideAnimationWidget4 extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget4(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.2, 0),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

class SlideAnimationWidget5 extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const SlideAnimationWidget5(
      {required this.animationController, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-0.2, 0),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(opacity: animationController, child: child),
    );
  }
}

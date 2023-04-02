import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:themeapp/widget/slide_animation_widget.dart';

import '../Helpers/constants.dart';
import 'main_page.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({
    required this.backgroundColor,
    required this.pixel,
    Key? key,
  }) : super(key: key);

  final Color backgroundColor;
  final double pixel;

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationController1;
  late AnimationController _animationController2;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _animationController1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    if (widget.pixel > 800) {
      _animationController.forward();
      print(widget.pixel);
    }

    // Timer(const Duration(milliseconds: 200), () {
    //   _animationController
    //       .forward()
    //       .then((value) => _animationController1.forward())
    //       .then((value) => _animationController2.forward());
    // });
    // // Timer(const Duration(milliseconds: 210),
    // //     () => _animationController.forward());
    // // Timer(const Duration(milliseconds: 220),
    // //     () => _animationController.forward());

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Column(
        children: [
          SlideAnimationWidget2(
            animationController: _animationController,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('My Interests',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 30)),
              ),
            ),
          ),
          verticalSpacer(50),
          SlideAnimationWidget3(
            animationController: _animationController,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InterestsContainer(
                    title: 'Gaming',
                    icon: FontAwesomeIcons.gamepad,
                  ),
                  InterestsContainer(
                    title: 'Movies',
                    icon: FontAwesomeIcons.video,
                  ),
                  InterestsContainer(
                    title: 'Music',
                    icon: FontAwesomeIcons.music,
                  ),
                  InterestsContainer(
                    title: 'Coding',
                    icon: FontAwesomeIcons.computer,
                  ),
                  InterestsContainer(
                    title: 'Writing',
                    icon: FontAwesomeIcons.pen,
                  ),
                  InterestsContainer(
                    title: 'Travelling',
                    icon: FontAwesomeIcons.plane,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themeapp/widget/slide_animation_widget.dart';

import '../Helpers/constants.dart';
import '../widget/change_theme_button_widget.dart';
import '../widget/on_hover_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.height,
    required this.backgroundColor,
    required this.imageUrl,
    required this.width,
  }) : super(key: key);

  final double height;
  final Color backgroundColor;
  final String imageUrl;
  final double width;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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

    Timer(const Duration(milliseconds: 200), () {
      _animationController
          .forward()
          .then((value) => _animationController1.forward())
          .then((value) => _animationController2.forward());
    });
    // Timer(const Duration(milliseconds: 210),
    //     () => _animationController.forward());
    // Timer(const Duration(milliseconds: 220),
    //     () => _animationController.forward());

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
      height: widget.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        image: DecorationImage(
          image: AssetImage(widget.imageUrl),
          fit: BoxFit.cover,
          opacity: 0.3,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                padding: const EdgeInsets.only(right: 40, left: 100),
                width: double.infinity,
                height: 60,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        OnHoverButton(builder: (isHovered) {
                          return isHovered
                              ? Column(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.linkedin,
                                      // color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('Linkedin')
                                  ],
                                )
                              : const Icon(
                                  FontAwesomeIcons.linkedin,
                                  // color: Colors.white,
                                  size: 20,
                                );
                        }),
                        horizontalSpacer(40),
                        OnHoverButton(builder: (isHovered) {
                          return isHovered
                              ? Column(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.facebook,
                                      // color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('facebook')
                                  ],
                                )
                              : const Icon(
                                  FontAwesomeIcons.facebook,
                                  // color: Colors.white,
                                  size: 20,
                                );
                        }),
                        horizontalSpacer(40),
                        OnHoverButton(builder: (isHovered) {
                          return isHovered
                              ? Column(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.github,
                                      // color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('Github')
                                  ],
                                )
                              : const Icon(
                                  FontAwesomeIcons.github,
                                  // color: Colors.white,
                                  size: 20,
                                );
                        }),
                        horizontalSpacer(40),
                        OnHoverButton(builder: (isHovered) {
                          return isHovered
                              ? Column(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.instagram,
                                      // color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('Instagram')
                                  ],
                                )
                              : const Icon(
                                  FontAwesomeIcons.instagram,
                                  // color: Colors.white,
                                  size: 20,
                                );
                        }),
                      ],
                    ),
                    const ChangeThemeButtonWidget()
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: widget.width / 2),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpacer(50),
                      SlideAnimationWidget(
                        animationController: _animationController,
                        child: Row(
                          children: [
                            Text(
                              'Hello',
                              style: GoogleFonts.roboto(
                                  fontSize: 130, fontWeight: FontWeight.w900),
                            ),
                            horizontalSpacer(20),
                            Column(
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                verticalSpacer(10),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      verticalSpacer(30),
                      SlideAnimationWidget(
                        animationController: _animationController1,
                        child: Text(
                          'I am',
                          style: GoogleFonts.roboto(
                              fontSize: 130, fontWeight: FontWeight.w900),
                        ),
                      ),
                      verticalSpacer(30),
                      SlideAnimationWidget(
                        animationController: _animationController2,
                        child: Text(
                          'Fuhad',
                          style: GoogleFonts.roboto(
                              fontSize: 130, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

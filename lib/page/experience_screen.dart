import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:themeapp/widget/slide_animation_widget.dart';

import '../Helpers/constants.dart';
import 'main_page.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({
    Key? key,
    required this.width,
    required this.about,
    required this.pixel,
  }) : super(key: key);

  final double width;
  final String about;
  final double pixel;

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen>
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

    if (widget.pixel > 1200) {
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
        color: Colors.black.withOpacity(0.7),
        // height: height + 220,
        width: double.infinity,
        child: Column(
          children: [
            verticalSpacer(60),
            const Text('EXPERIENCE',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w900,
                    fontSize: 30)),
            Row(
              children: [
                SizedBox(
                  width: (widget.width / 2) - 30,
                  // height: 600,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        verticalSpacer(190),
                        SlideAnimationWidget5(
                          animationController: _animationController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EduText(
                                title: "BACHELORS'S DEGREE",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "JULY 2016 - NOVEMBER 2021 |",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "KWARA STATE UNIVERSITY",
                              ),
                              verticalSpacer(80),
                              SizedBox(
                                width: 300,
                                child: Text(widget.about),
                              ),
                              verticalSpacer(60),
                              EduText(
                                title: "HIGH SCHOOL",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "JULY 2010 - AUGUST 2013 |",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "ST FINBARR'S COLLEGE",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: Column(children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          shape: BoxShape.circle),
                      child: const Icon(
                        FontAwesomeIcons.graduationCap,
                        color: Colors.blue,
                      ),
                    ),
                    BlueLine(
                      height: 130,
                    ),
                    const CircleDot(),
                    BlueLine(
                      height: 130,
                    ),
                    const CircleDot(),
                    BlueLine(
                      height: 130,
                    ),
                    const CircleDot(),
                  ]),
                ),
                SizedBox(
                  width: (widget.width / 2) - 30,
                  child: SlideAnimationWidget4(
                    animationController: _animationController,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpacer(190),
                          SizedBox(
                            width: 300,
                            child: Text(widget.about),
                          ),
                          verticalSpacer(80),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EduText(
                                title: "BACHELORS'S DEGREE",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "JULY 2016 - NOVEMBER 2021 |",
                              ),
                              verticalSpacer(5),
                              EduText(
                                title: "KWARA STATE UNIVERSITY",
                              ),
                              verticalSpacer(60),
                              SizedBox(
                                width: 300,
                                child: Text(widget.about),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )

        // Column(
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       decoration: BoxDecoration(
        //           border: Border.all(color: Colors.blue, width: 2),
        //           shape: BoxShape.circle),
        //       child: const Icon(
        //         FontAwesomeIcons.graduationCap,
        //         color: Colors.blue,
        //       ),
        //     ),
        //     BlueLine(
        //       height: 120,
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           width: 200,
        //           child: Column(
        //             children: const [
        //               Text("BACHELORS'S DEGREE"),
        //               Text("JULY 2016 - NOVEMBER 2021 |"),
        //               Text("KWARA STATE UNIVERSITY"),
        //             ],
        //           ),
        //         ),
        //         // horizontalSpacer(50),
        //         const CircleDot(),
        //         // horizontalSpacer(50),
        //         const Text('data'),
        //       ],
        //     ),
        //   ],
        // ),

        );
  }
}

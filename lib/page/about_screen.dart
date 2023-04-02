import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:themeapp/widget/slide_animation_widget.dart';

import '../Helpers/constants.dart';
import '../widget/on_hover_button.dart';
import 'main_page.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({
    Key? key,
    required this.height,
    required this.backgroundColor,
    required this.myPicture,
    required this.about,
    required this.pixel,
  }) : super(key: key);

  final double height;
  final Color backgroundColor;
  final String myPicture;
  final String about;
  final double pixel;

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
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

    if (widget.pixel > 320) {
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
      height: widget.height,
      width: double.infinity,
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(imageUrl),
          //   fit: BoxFit.cover,
          //   opacity: 0.3,
          // ),
          color: widget.backgroundColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideAnimationWidget1(
                  animationController: _animationController,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 150, top: 100),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.blue,
                                  )),
                            ),
                            Positioned(
                              bottom: -100,
                              left: -50,
                              child: Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(widget.myPicture),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    // BoxShadow(
                                    //     blurRadius: 5,
                                    //     offset: Offset(5, 5),
                                    //     color: Colors.grey),
                                    BoxShadow(
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                        color: Colors.black.withOpacity(0.5)),
                                    //BoxShadow(color: white, offset: const Offset(5, 0)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpacer(150),
                        OnHoverResumeButton(builder: (isHovered) {
                          return Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              isHovered
                                  ? Container(
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.blue),
                                    )
                                  : Container(
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.orange),
                                    ),
                              isHovered
                                  ? Container(
                                      height: 45,
                                      width: 195,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.orange),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            FontAwesomeIcons.cloudArrowDown,
                                            // color: Colors.white,
                                            size: 20,
                                          ),
                                          horizontalSpacer(20),
                                          const Text('Download Resume'),
                                        ],
                                      ),
                                    )
                                  : Container(
                                      height: 45,
                                      width: 195,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.blue),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            FontAwesomeIcons.cloudArrowDown,
                                            // color: Colors.white,
                                            size: 20,
                                          ),
                                          horizontalSpacer(20),
                                          const Text('Download Resume'),
                                        ],
                                      ),
                                    ),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                SlideAnimationWidget(
                  animationController: _animationController,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150.0, top: 100),
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text('ABOUT ME',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 40)),
                          ),
                          verticalSpacer(30),
                          Text(widget.about),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'NAME:',
                            details: 'Aminu Fuhad',
                          ),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'COURSE OF STUDY:',
                            details: 'Electrical Engineering',
                          ),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'CLASS OF DEGREE:',
                            details: 'First Class Honours',
                          ),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'NATIONALITY:',
                            details: 'Nigerian',
                          ),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'PHONE:',
                            details: '(+234) 8106091838',
                          ),
                          verticalSpacer(20),
                          DetailsRow(
                            title: 'EMAIL:',
                            details: 'Jnrolamilekan123@gmail.com',
                          ),

                          // DetailsRow(title: 'Name:',details: 'Aminu Fuhad',),
                          // DetailsRow(title: 'Name:',details: 'Aminu Fuhad',),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            verticalSpacer(50),
            // const InterestScreen(),
            // verticalSpacer(50),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 150),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       InterestsContainer(
            //         title: 'Gaming',
            //         icon: FontAwesomeIcons.gamepad,
            //       ),
            //       InterestsContainer(
            //         title: 'Movies',
            //         icon: FontAwesomeIcons.video,
            //       ),
            //       InterestsContainer(
            //         title: 'Music',
            //         icon: FontAwesomeIcons.music,
            //       ),
            //       InterestsContainer(
            //         title: 'Coding',
            //         icon: FontAwesomeIcons.computer,
            //       ),
            //       InterestsContainer(
            //         title: 'Writing',
            //         icon: FontAwesomeIcons.pen,
            //       ),
            //       InterestsContainer(
            //         title: 'Travelling',
            //         icon: FontAwesomeIcons.plane,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

// class InterestScreen extends StatelessWidget {
//   const InterestScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 150),
//           child: Align(
//             alignment: Alignment.topLeft,
//             child: Text('My Interests',
//                 style: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 30)),
//           ),
//         ),
//         verticalSpacer(50),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 150),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               InterestsContainer(
//                 title: 'Gaming',
//                 icon: FontAwesomeIcons.gamepad,
//               ),
//               InterestsContainer(
//                 title: 'Movies',
//                 icon: FontAwesomeIcons.video,
//               ),
//               InterestsContainer(
//                 title: 'Music',
//                 icon: FontAwesomeIcons.music,
//               ),
//               InterestsContainer(
//                 title: 'Coding',
//                 icon: FontAwesomeIcons.computer,
//               ),
//               InterestsContainer(
//                 title: 'Writing',
//                 icon: FontAwesomeIcons.pen,
//               ),
//               InterestsContainer(
//                 title: 'Travelling',
//                 icon: FontAwesomeIcons.plane,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:themeapp/Helpers/constants.dart';
import 'package:themeapp/page/experience_screen.dart';
import 'package:themeapp/page/project_screen.dart';
import 'package:themeapp/page/specialization_screen.dart';
import 'package:themeapp/provider/theme_provider.dart';
import 'package:themeapp/widget/on_hover_button.dart';

import 'about_screen.dart';
import 'education_screen.dart';
import 'home_screen.dart';
import 'interest_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    final imageUrl =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 'assets/images/dark_background_word.png'
            : 'assets/images/white_background_word.png';

    const myPicture = 'assets/images/fuhad.jpg';

    const about =
        'Hello!, I am Aminu Fuhad, A Full Stack Mobile Developer with over 3 years of experience. Experienced with all stages of the development cycle for dynamiic Mobile projects. Having an in-depth knowledge inluding Flutter, Dart, C#, ASP.NET, Python. Strong background in management and leadership ';

    final backgroundColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.black
            : Colors.white;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.orange,
      //     title: const Text('yesss'),
      //     actions: const [
      //       ChangeThemeButtonWidget(),
      //     ]),
      body: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              // Text(text),
              // pixels > 50
              //     ? Container(
              //         height: 200,
              //         width: 300,
              //         color: Colors.red,
              //       )
              //     : Container(
              //         height: 200,
              //         width: 300,
              //         color: Colors.blue,
              //       ),
              HomeScreen(
                  height: height,
                  backgroundColor: backgroundColor,
                  imageUrl: imageUrl,
                  width: width),
              pixels > 320
                  ? AboutScreen(
                      height: height,
                      backgroundColor: backgroundColor,
                      myPicture: myPicture,
                      pixel: pixels,
                      about: about)
                  : Container(
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(imageUrl),
                          //   fit: BoxFit.cover,
                          //   opacity: 0.3,
                          // ),
                          color: backgroundColor),
                    ),
              pixels > 800
                  ? InterestScreen(
                      backgroundColor: backgroundColor,
                      pixel: pixels,
                    )
                  : Container(
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(imageUrl),
                          //   fit: BoxFit.cover,
                          //   opacity: 0.3,
                          // ),
                          color: backgroundColor),
                    ),
              pixels > 1200
                  ? ExperienceScreen(
                      width: width,
                      about: about,
                      pixel: pixels,
                    )
                  : Container(
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(imageUrl),
                          //   fit: BoxFit.cover,
                          //   opacity: 0.3,
                          // ),
                          color: backgroundColor),
                    ),
              pixels > 2000
                  ? EducationScreen(
                      width: width,
                      about: about,
                      pixel: pixels,
                    )
                  : Container(
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(imageUrl),
                          //   fit: BoxFit.cover,
                          //   opacity: 0.3,
                          // ),
                          color: backgroundColor),
                    ),
              SpecializationScreen(
                  height: height,
                  backgroundColor: backgroundColor,
                  about: about),
              pixels > 2900
                  ? ProjectScreen(
                      height: height,
                      backgroundColor: backgroundColor,
                      about: about)
                  : Container(
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(imageUrl),
                          //   fit: BoxFit.cover,
                          //   opacity: 0.3,
                          // ),
                          color: backgroundColor),
                    ),
            ],
          )),
    );
  }
}

class EduText extends StatelessWidget {
  String title;
  EduText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Colors.blue, fontSize: 18),
    );
  }
}

class CircleDot extends StatelessWidget {
  const CircleDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          shape: BoxShape.circle),
      child: const Icon(
        FontAwesomeIcons.circleDot,
        size: 20,
        color: Colors.blue,
      ),
    );
  }
}

class BlueLine extends StatelessWidget {
  double height;
  BlueLine({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 3,
      color: Colors.blue,
    );
  }
}

class InterestsContainer extends StatelessWidget {
  IconData icon;
  String title;
  InterestsContainer({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverResumeButton(builder: (isHovered) {
      return isHovered
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    icon,
                    size: 24,
                  ),
                ),
                verticalSpacer(20),
                Text(title)
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      )),
                  child: Icon(
                    icon,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                verticalSpacer(20),
                const Text('')
              ],
            );
    });
  }
}

class DetailsRow extends StatelessWidget {
  String title;
  String details;
  DetailsRow({
    Key? key,
    required this.details,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18)),
        horizontalSpacer(10),
        Text(details, style: const TextStyle(fontSize: 18))
      ],
    );
  }
}

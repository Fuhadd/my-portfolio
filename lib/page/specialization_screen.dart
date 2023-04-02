import 'package:flutter/material.dart';

import '../Helpers/constants.dart';

class SpecializationScreen extends StatelessWidget {
  const SpecializationScreen({
    Key? key,
    required this.height,
    required this.backgroundColor,
    required this.about,
  }) : super(key: key);

  final double height;
  final Color backgroundColor;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(color: backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 360,
            width: 350,
            color: Colors.grey.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '02.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(25),
                  const Text(
                    'BACKEND DEVELOPMENT',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(30),
                  Text(
                    about,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, height: 1.5),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 400,
            width: 350,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '01.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(25),
                  const Text(
                    'MOBILE DEVELOPMENT',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(30),
                  Text(
                    about,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, height: 1.5),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 360,
            width: 350,
            color: Colors.grey.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '03.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(25),
                  const Text(
                    'PYTHON / DJANGO',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  verticalSpacer(30),
                  Text(
                    about,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, height: 1.5),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:themeapp/Helpers/constants.dart';
import 'package:themeapp/widget/flipping_widget.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
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
        // height: height,
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                ],
              ),
              verticalSpacer(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                  FlippingWidget(
                      backWidget: ProjectBox(), frontWidget: ProjectBox1()),
                ],
              ),
              verticalSpacer(20),
            ],
          ),
        ));
  }
}

class ProjectBox extends StatelessWidget {
  const ProjectBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      color: Colors.black,
    );
  }
}

class ProjectBox1 extends StatelessWidget {
  const ProjectBox1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      color: Colors.grey.withOpacity(0.8),
    );
  }
}

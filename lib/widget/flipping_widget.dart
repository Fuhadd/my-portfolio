import 'package:flutter/material.dart';
import 'dart:math';

class FlippingWidget extends StatefulWidget {
  final Widget frontWidget;
  final Widget backWidget;
  const FlippingWidget(
      {Key? key, required this.backWidget, required this.frontWidget})
      : super(key: key);

  @override
  _FlippingWidgetState createState() => _FlippingWidgetState();
}

class _FlippingWidgetState extends State<FlippingWidget> {
  //declare the isBack bool
  bool isBack = true;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    // Timer(const Duration(milliseconds: 0), () {
    //   _flip();
    // });
    _flip();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Now we will start making our Card
          //the principe is basic
          //we will create a container that will display the back face or the front face
          // and we will wrap it in a Transform widget
          //then we will make a tween animation for animating our card
          //now let's wrap our tween animation inside a gesture detector

          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: angle),
              duration: const Duration(seconds: 3),
              builder: (BuildContext context, double val, __) {
                //here we will change the isBack val so we can change the content of the card
                if (val >= (pi / 2)) {
                  isBack = false;
                } else {
                  isBack = true;
                }
                return (Transform(
                  //let's make the card flip by it's center
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(val),
                  child: SizedBox(
                      width: 309,
                      height: 385,
                      child: isBack
                          ? widget.backWidget

                          // Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10.0),
                          //       image: const DecorationImage(
                          //         image: AssetImage("assets/images/back.png"),
                          //       ),
                          //     ),
                          //   ) //if it's back we will display here
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(
                                    pi), // it will flip horizontally the container
                              child: widget.frontWidget,
                              // Container(
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(10.0),
                              //     image: const DecorationImage(
                              //       image: AssetImage('assets/images/face.png'),
                              //     ),
                              //   ),
                              //   child: const Center(
                              //     child: Text(
                              //       "Surprise ! 🎊",
                              //       style: TextStyle(
                              //         fontSize: 30.0,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ) //else we will display it here,
                      ),
                ));
              })
        ],
      ),
    );
  }
}

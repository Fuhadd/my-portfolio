// import 'package:flutter/material.dart';

// class FlippingWidget1 extends StatefulWidget {
//   final Widget frontChild;
//   final Widget backChild;
//   const FlippingWidget1({
//     Key? key,
//     required this.backChild,
//     required this.frontChild,
//   }) : super(key: key);

//   @override
//   State<FlippingWidget1> createState() => _FlippingWidget1State();
// }

// class _FlippingWidget1State extends State<FlippingWidget1>
//     with TickerProviderStateMixin {
//   AnimationController controller;
//   Animation<double> animation;
//   bool isFront = true;
//   double verticalDrag = 0; //(between 0 - 360);

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller = AnimationController(
//         duration: const Duration(milliseconds: 500), vsync: (this));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onVerticalDragStart: (details) {
//         controller.reset();
//         setState(() {
//           isFront = true;
//           verticalDrag = 0;
//         });
//       },
//       onVerticalDragUpdate: (details) {
//         verticalDrag += details.delta.dy;
//         verticalDrag += 360;

//         setContainerSide();
//       },
//       onVerticalDragEnd: (details) {
//         final double end = 360 - verticalDrag >= 180 ? 0 : 360;
//         animation =
//             Tween<double>(begin: verticalDrag, end: end).animate(controller)
//               ..addListener(() {
//                 setState(() {
//                   verticalDrag = animation.value;
//                   setContainerSide();
//                 });
//               });
//         controller.forward();
//       },
//       child: Transform(
//         transform: Matrix4.identity()
//           ..setEntry(3, 2, 0.001)
//           ..rotateX(verticalDrag / 180 * pi),
//         // alignment: Alignment.center,//for 3d effect and rotation
//         child: isFront
//             ? Container(
//                 child: widget.frontChild,
//               )
//             : Transform(
//                 transform: Matrix4.identity()..rotateX(verticalDrag / pi),
//                 // alignment: Alignment.center,
//                 child: Container(
//                   child: widget.backChild,
//                 ),
//               ),
//       ),
//     );
//   }

//   void setContainerSide() {
//     if (verticalDrag <= 90 || verticalDrag >= 270) {
//       isFront = true;
//     } else {
//       isFront = false;
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverButton({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final orhoveredTransform = Matrix4.identity()..scale(1.1);
    final orrhoveredTransform = Matrix4.identity()..translate(0, -8, 0);
    final hoveredTransform = Matrix4.identity()
      ..translate(1, -2, 0)
      ..scale(1.0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            curve: Sprung.overDamped,
            duration: const Duration(milliseconds: 200),
            transform: transform,
            child: widget.builder(isHovered)));
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

class OnHoverResumeButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverResumeButton({Key? key, required this.builder})
      : super(key: key);

  @override
  State<OnHoverResumeButton> createState() => _OnHoverResumeButtonState();
}

class _OnHoverResumeButtonState extends State<OnHoverResumeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: Container(child: widget.builder(isHovered)));
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}

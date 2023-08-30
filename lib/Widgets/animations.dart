import 'package:flutter/material.dart';
import 'package:pitchub/Utils/enums.dart';

class AppSlideAnimation extends StatefulWidget {
  final Widget child;
  final AnimateFrom? animateFrom;
  final Curve curve;
  const AppSlideAnimation(
      {required this.child,
      this.curve = Curves.easeInOut,
      required this.animateFrom,
      super.key});

  @override
  State<AppSlideAnimation> createState() => _AppSlideAnimationState();
}

class _AppSlideAnimationState extends State<AppSlideAnimation> {
  late double dx, dy;

  animation() async {
    switch (widget.animateFrom) {
      case AnimateFrom.left:
        dx = 0.2;
        dy = 0.0;
      case AnimateFrom.right:
        dx = -0.2;
        dy = 0.0;
      case AnimateFrom.top:
        dy = 0.2;
        dx = 0.0;
      case AnimateFrom.bottom:
        dy = -0.2;
        dx = 0.0;
      default:
        dx = dy = 0.0;
    }
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {});
    dx = dy = 0.0;
  }

  @override
  void initState() {
    // TODO: implement initState
    animation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      duration: const Duration(milliseconds: 500),
      offset: Offset(dx, dy),
      curve: widget.curve,
      child: widget.child,
    );
  }
}

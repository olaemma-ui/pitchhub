import 'package:flutter/material.dart';
import 'package:pitchub/Utils/enums.dart';

class AppSlideAnimation extends StatefulWidget {
  final Widget child;
  final AnimateFrom? animateFrom;
  final Curve curve;
  final double? start;

  /// In milliseconds
  final int? duration;
  final int? delay;
  const AppSlideAnimation(
      {required this.child,
      this.curve = Curves.easeInOut,
      this.duration,
      this.start,
      this.delay,
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
        dx = widget.start ?? 0.2;
        dy = 0.0;
      case AnimateFrom.right:
        dx = (widget.start != null ? (-widget.start!) : widget.start) ?? -0.2;
        dy = 0.0;
      case AnimateFrom.top:
        dy = (widget.start != null ? (-widget.start!) : widget.start) ?? -0.2;
        dx = 0.0;
      case AnimateFrom.bottom:
        dy = widget.start ?? 0.2;
        dx = 0.0;
      default:
        dx = dy = 0.0;
    }
    await Future.delayed(Duration(milliseconds: widget.delay ?? 100));
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
      duration: Duration(milliseconds: widget.duration ?? 500),
      offset: Offset(dx, dy),
      curve: widget.curve,
      child: widget.child,
    );
  }
}

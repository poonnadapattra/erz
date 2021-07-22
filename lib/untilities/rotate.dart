import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class Rotate extends StatelessWidget {
  const Rotate({
    Key? key,
    this.child,
    this.degree: 90,
  }) : super(key: key);

  final Widget? child;
  final double? degree;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: degree! * math.pi / 180,
      child: child,
    );
  }
}
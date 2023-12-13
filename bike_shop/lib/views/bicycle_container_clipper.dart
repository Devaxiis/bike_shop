import 'dart:math';

import 'package:flutter/material.dart';

class BicycleContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path()
      ..arcTo(Rect.fromCircle(center: const Offset(30, 30), radius: 30), pi,
          pi / 2, false)
      ..lineTo(width - 30, 0)
      ..arcTo(Rect.fromCircle(center: Offset(width - 30, 30), radius: 30),
          -pi / 2, pi / 2, false)
      ..lineTo(width, height - 60)
      ..arcTo(
          Rect.fromCircle(center: Offset(width - 30, height - 60), radius: 30),
          0,
          pi / 2,
          false)
      ..lineTo(30, height)
      ..arcTo(Rect.fromCircle(center: Offset(30, height - 30), radius: 30),
          pi / 2, pi / 2, false)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

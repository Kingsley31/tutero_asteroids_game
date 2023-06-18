

import 'dart:ui';

import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:tutero_asteroids_game/src/models/asteroid.dart';

class CircleAsteroid extends Asteroid{
  CircleAsteroid({required super.startPosition, required super.size, required super.velocity});

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint= Paint()
      ..color = const Color(0xFFFF0000);
    canvas.drawCircle(Offset(size.width/2,size.height/2), super.size.height/2, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
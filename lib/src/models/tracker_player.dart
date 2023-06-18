
import 'dart:ui';

import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:tutero_asteroids_game/src/models/player.dart';

class TrackerPlayer extends Player{

  TrackerPlayer({required super.startPosition});

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePaint= Paint()
      ..color = const Color(0xFFFFFFFF);
    canvas.drawCircle(Offset(size.width/2,size.height/2), 10, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
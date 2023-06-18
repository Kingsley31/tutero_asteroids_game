

import 'package:flutter/cupertino.dart';

abstract class GameEntity extends CustomPainter{

  GameEntity({required Offset startPosition}){
    _position=startPosition;
  }

  late Offset _position;

  Offset get position{
    return _position;
  }

  set updatePosition(Offset position){
    _position = position;
  }


}
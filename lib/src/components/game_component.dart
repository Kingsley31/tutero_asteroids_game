import 'package:flutter/material.dart';
import 'package:tutero_asteroids_game/src/models/game_entity.dart';

import '../models/player.dart';


class GameComponent extends StatelessWidget {

  const GameComponent({Key? key,required this.gameEntity}) : super(key: key);

  final GameEntity gameEntity;


  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: gameEntity.position.dx,
        top: gameEntity.position.dy,
        child: CustomPaint(
          painter: gameEntity,
        ),
    );
  }
}




import 'package:flutter/cupertino.dart';
import 'package:tutero_asteroids_game/src/models/tracker_player.dart';

import 'cursor_player.dart';
import 'game_entity.dart';

enum PlayerMode{tracker,cursor}

abstract class Player extends GameEntity{

    Player({required super.startPosition});

    factory Player.create({required Offset position,required PlayerMode playerMode}){
      switch(playerMode){
        case PlayerMode.tracker:
          return TrackerPlayer(startPosition:position);
        case PlayerMode.cursor:
          return CursorPlayer(startPosition:position);
        default:
          return TrackerPlayer(startPosition:position);
      }
    }

}


import 'dart:ui';

import 'package:tutero_asteroids_game/src/models/circle_asteroid.dart';
import 'package:tutero_asteroids_game/src/models/game_entity.dart';
import 'package:tutero_asteroids_game/src/models/polygon_asteroids.dart';

enum AsteroidType{circle,polygon}
abstract class Asteroid extends GameEntity{
  Asteroid({required super.startPosition,required this.size,required this.velocity});
  Size size;
  Offset velocity;

  factory Asteroid.create({required Offset startPosition,required Size size,required Offset velocity,required AsteroidType asteroidType}){
    switch(asteroidType){
      case AsteroidType.circle:
        return CircleAsteroid(startPosition: startPosition, size: size, velocity: velocity);
      case AsteroidType.polygon:
        return PolygonAsteroid(startPosition: startPosition, size: size, velocity: velocity);
      default:
        return CircleAsteroid(startPosition: startPosition, size: size, velocity: velocity);
    }
  }

  void move(){
    Offset position= super.position + velocity;
    super.updatePosition=position;
  }


}
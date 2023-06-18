
import 'dart:ui';

import 'package:tutero_asteroids_game/src/repositories/polygon_asteroid_repository.dart';

import '../models/asteroid.dart';
import 'circle_asteroid_repository.dart';

enum AsteroidRepositoryType{circle,polygon}

abstract class AsteroidRepository{

  factory AsteroidRepository({required AsteroidRepositoryType asteroidRepositoryType}){
    switch(asteroidRepositoryType){
      case AsteroidRepositoryType.circle:
        return CircleAsteroidRepository();
      case AsteroidRepositoryType.polygon:
        return PolygonAsteroidRepository();
      default:
        return CircleAsteroidRepository();
    }
  }

  List<Asteroid> generateAsteroids({required Offset startPosition,required int minSize,required int maxSize,required int numOfAsteroid,required averageSpeed});

}
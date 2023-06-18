
import 'dart:math';
import 'dart:ui';

import 'package:tutero_asteroids_game/src/models/asteroid.dart';

import 'asteroid_repository.dart';


class PolygonAsteroidRepository implements AsteroidRepository{
  @override
  List<Asteroid> generateAsteroids({required Offset startPosition, required int minSize, required int maxSize, required int numOfAsteroid, required averageSpeed}) {
    final random = Random();
    List<Asteroid> asteroids=[];
    for(var i=0;i<numOfAsteroid;i++){
      double xSize = random.nextInt(maxSize-minSize)as double;
      Size size= Size(xSize, xSize);
      Offset velocity= Offset(random.nextDouble()*averageSpeed, random.nextDouble()*averageSpeed);
      AsteroidType asteroidType = AsteroidType.polygon;
      Asteroid asteroid= Asteroid.create(startPosition: startPosition, size: size, velocity: velocity, asteroidType: asteroidType);
      asteroids.add(asteroid);
    }

    return asteroids;
  }




}
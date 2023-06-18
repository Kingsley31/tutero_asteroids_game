
import 'package:flutter/material.dart';
import 'package:tutero_asteroids_game/src/models/asteroid.dart';
import '../models/player.dart';
import '../repositories/asteroid_repository.dart';

class GameController{
  late List<Asteroid> _asteroids;
  late Player _player;
  PlayerMode playerMode= PlayerMode.tracker;
  AsteroidRepository asteroidRepository = AsteroidRepository(asteroidRepositoryType: AsteroidRepositoryType.circle);

  GameController(){
    _asteroids=[
      ...asteroidRepository.generateAsteroids(
          startPosition: const Offset(50,50),
          minSize: 50,
          maxSize: 100,
          numOfAsteroid: 10,
          averageSpeed: 2.0)
    ];
    _player= Player.create(position:const Offset(0,0), playerMode: playerMode);
  }

  List<Asteroid> get asteroids{
    return _asteroids;
  }

  Player get player{
    return _player;
  }

  void updatePlayerPosition(Offset playerPosition){
    player.updatePosition=playerPosition;
  }

  void moveAsteroids(){
    //print("Total number of Asteroid ${_asteroids.length}");
    for (var asteroid in _asteroids) { asteroid.move();}
  }

}
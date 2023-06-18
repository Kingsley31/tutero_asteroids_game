
import 'package:flutter/material.dart';
import 'package:tutero_asteroids_game/src/controllers/game_controller.dart';
import '../components/game_component.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with SingleTickerProviderStateMixin {
  Offset playerPosition= const Offset(0, 0);
  GameController gameController= GameController();
  late AnimationController controller;



  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context,boxConstraints){
          if(playerPosition.dx==0 && playerPosition.dy==0){
            playerPosition=Offset(boxConstraints.maxWidth/2, boxConstraints.maxHeight/2);
            gameController.updatePlayerPosition(playerPosition);
          }
          return MouseRegion(
            onHover: _updatePlayerLocation,
            onEnter: _updatePlayerLocation,
            child: Stack(
              children: [
                SizedBox(
                  width: boxConstraints.maxWidth,
                  height: boxConstraints.maxHeight,
                ),
                ... gameController.asteroids.map((asteroid) => GameComponent(gameEntity: asteroid)),
                GameComponent(gameEntity: gameController.player),
              ],
            ),
          );
        },
      ),
    );
  }

  void _updatePlayerLocation(PointerEvent details) {
    playerPosition=Offset(details.position.dx, details.position.dy);
    gameController.updatePlayerPosition(playerPosition);
  }

  void initGame() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat();
        }
        gameController.moveAsteroids();
        setState(() {});
      });
  }
}

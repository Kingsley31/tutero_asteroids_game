import 'package:flutter/material.dart';

import 'game_screen.dart';

class GameOverScreen extends StatelessWidget {
  const GameOverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GAME OVER",
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const GameScreen())
                  );
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5),
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
              child:Text(
                "Try Again",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

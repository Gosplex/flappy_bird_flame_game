import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'mainMenu';
  const MainMenuScreen({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          game.overlays.remove(id);
          game.resumeEngine();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.menu),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}

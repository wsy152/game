import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_firt/amber_quest.dart';

void main() {
  runApp(const GameWidget<EmberQuestGame>.controlled(
      gameFactory: EmberQuestGame.new));
}

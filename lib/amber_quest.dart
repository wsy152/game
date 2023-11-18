import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game_firt/ember_player.dart';

class EmberQuestGame extends FlameGame {

  EmberQuestGame();

  late EmberPlayer _amber;

  @override
  final world = World();
  late final CameraComponent cameraComponent;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'block.png',
      'ember.png',
      'ground.png',
      'heart_half.png',
      'heart.png',
      'star.png',
      'water_enemy.png',
    ]);

    cameraComponent = CameraComponent(world: world);
    cameraComponent.viewfinder.anchor = Anchor.topLeft;

    addAll([cameraComponent, world]);

    _amber= EmberPlayer(position: Vector2(128, canvasSize.y - 170));
    world.add(_amber);
  }

}
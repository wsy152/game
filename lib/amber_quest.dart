import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game_firt/actors/water_enemy.dart';
import 'package:game_firt/ember_player.dart';
import 'package:game_firt/managers/segment_manager.dart';
import 'package:game_firt/objects/ground_block.dart';
import 'package:game_firt/objects/platform_block.dart';
import 'package:game_firt/objects/star.dart';

class EmberQuestGame extends FlameGame {
  EmberQuestGame();

  late EmberPlayer _ember;
   double objectSpeed = 0.0;

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

    initializeGame();
  }

  void initializeGame() {
    // Assume that size.x < 3200
    final segmentsToLoad = (size.x / 640).ceil();
    segmentsToLoad.clamp(0, segments.length);

    for (var i = 0; i <= segmentsToLoad; i++) {
      loadGameSegments(i, (640 * i).toDouble());
    }

    _ember = EmberPlayer(
      position: Vector2(128, canvasSize.y - 70),
    );
    world.add(_ember);
  }

  void loadGameSegments(int segmentIndex, double xPositionOffset) {
    for (final block in segments[segmentIndex]) {
      switch (block.blockType) {
        case GroundBlock:
          break;
        case PlatformBlock:
          add(PlatformBlock(
            gridPosition: block.gridPosition,
            xOffset: xPositionOffset,
          ));
          break;
        case Star:
          break;
        case WaterEnemy:
          break;
      }
    }
  }
}




import 'package:flame/components.dart';
import 'package:game_firt/actors/water_enemy.dart';
import 'package:game_firt/objects/platform_block.dart';
import 'package:game_firt/objects/star.dart';

import '../objects/ground_block.dart';

class SegmentManager {
  final Vector2 gridPosition;
  final Type blockType;

  SegmentManager(this.gridPosition,this.blockType);
  
}

final segments = [
  segment0,
  segment1,
  segment2,
  segment3,
  segment4,
];

final segment0 = [
  SegmentManager(Vector2(0, 0), GroundBlock),
  SegmentManager(Vector2(1, 0), GroundBlock),
  SegmentManager(Vector2(2, 0), GroundBlock),
  SegmentManager(Vector2(3, 0), GroundBlock),
  SegmentManager(Vector2(4, 0), GroundBlock),
  SegmentManager(Vector2(5, 0), GroundBlock),
  SegmentManager(Vector2(5, 1), WaterEnemy),
  SegmentManager(Vector2(5, 3), PlatformBlock),
  SegmentManager(Vector2(6, 0), GroundBlock),
  SegmentManager(Vector2(6, 3), PlatformBlock),
  SegmentManager(Vector2(7, 0), GroundBlock),
  SegmentManager(Vector2(7, 3), PlatformBlock),
  SegmentManager(Vector2(8, 0), GroundBlock),
  SegmentManager(Vector2(8, 3), PlatformBlock),
  SegmentManager(Vector2(9, 0), GroundBlock),
];

final segment1 = [
  SegmentManager(Vector2(0, 0), GroundBlock),
  SegmentManager(Vector2(1, 0), GroundBlock),
  SegmentManager(Vector2(1, 1), PlatformBlock),
  SegmentManager(Vector2(1, 2), PlatformBlock),
  SegmentManager(Vector2(1, 3), PlatformBlock),
  SegmentManager(Vector2(2, 6), PlatformBlock),
  SegmentManager(Vector2(3, 6), PlatformBlock),
  SegmentManager(Vector2(6, 5), PlatformBlock),
  SegmentManager(Vector2(7, 5), PlatformBlock),
  SegmentManager(Vector2(7, 7), Star),
  SegmentManager(Vector2(8, 0), GroundBlock),
  SegmentManager(Vector2(8, 1), PlatformBlock),
  SegmentManager(Vector2(8, 5), PlatformBlock),
  SegmentManager(Vector2(8, 6), WaterEnemy),
  SegmentManager(Vector2(9, 0), GroundBlock),
];

final segment2 = [
  SegmentManager(Vector2(0, 0), GroundBlock),
  SegmentManager(Vector2(1, 0), GroundBlock),
  SegmentManager(Vector2(2, 0), GroundBlock),
  SegmentManager(Vector2(3, 0), GroundBlock),
  SegmentManager(Vector2(3, 3), PlatformBlock),
  SegmentManager(Vector2(4, 0), GroundBlock),
  SegmentManager(Vector2(4, 3), PlatformBlock),
  SegmentManager(Vector2(5, 0), GroundBlock),
  SegmentManager(Vector2(5, 3), PlatformBlock),
  SegmentManager(Vector2(5, 4), WaterEnemy),
  SegmentManager(Vector2(6, 0), GroundBlock),
  SegmentManager(Vector2(6, 3), PlatformBlock),
  SegmentManager(Vector2(6, 4), PlatformBlock),
  SegmentManager(Vector2(6, 5), PlatformBlock),
  SegmentManager(Vector2(6, 7), Star),
  SegmentManager(Vector2(7, 0), GroundBlock),
  SegmentManager(Vector2(8, 0), GroundBlock),
  SegmentManager(Vector2(9, 0), GroundBlock),
];

final segment3 = [
  SegmentManager(Vector2(0, 0), GroundBlock),
  SegmentManager(Vector2(1, 0), GroundBlock),
  SegmentManager(Vector2(1, 1), WaterEnemy),
  SegmentManager(Vector2(2, 0), GroundBlock),
  SegmentManager(Vector2(2, 1), PlatformBlock),
  SegmentManager(Vector2(2, 2), PlatformBlock),
  SegmentManager(Vector2(4, 4), PlatformBlock),
  SegmentManager(Vector2(6, 6), PlatformBlock),
  SegmentManager(Vector2(7, 0), GroundBlock),
  SegmentManager(Vector2(7, 1), PlatformBlock),
  SegmentManager(Vector2(8, 0), GroundBlock),
  SegmentManager(Vector2(8, 8), Star),
  SegmentManager(Vector2(9, 0), GroundBlock),
];

final segment4 = [
  SegmentManager(Vector2(0, 0), GroundBlock),
  SegmentManager(Vector2(1, 0), GroundBlock),
  SegmentManager(Vector2(2, 0), GroundBlock),
  SegmentManager(Vector2(2, 3), PlatformBlock),
  SegmentManager(Vector2(3, 0), GroundBlock),
  SegmentManager(Vector2(3, 1), WaterEnemy),
  SegmentManager(Vector2(3, 3), PlatformBlock),
  SegmentManager(Vector2(4, 0), GroundBlock),
  SegmentManager(Vector2(5, 0), GroundBlock),
  SegmentManager(Vector2(5, 5), PlatformBlock),
  SegmentManager(Vector2(6, 0), GroundBlock),
  SegmentManager(Vector2(6, 5), PlatformBlock),
  SegmentManager(Vector2(6, 7), Star),
  SegmentManager(Vector2(7, 0), GroundBlock),
  SegmentManager(Vector2(8, 0), GroundBlock),
  SegmentManager(Vector2(8, 3), PlatformBlock),
  SegmentManager(Vector2(9, 0), GroundBlock),
  SegmentManager(Vector2(9, 1), WaterEnemy),
  SegmentManager(Vector2(9, 3), PlatformBlock),
];

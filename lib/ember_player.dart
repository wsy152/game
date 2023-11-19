import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/services.dart';
import 'package:game_firt/amber_quest.dart';
import 'package:game_firt/objects/ground_block.dart';
import 'package:game_firt/objects/platform_block.dart';

class EmberPlayer extends SpriteAnimationComponent
    with KeyboardHandler, CollisionCallbacks, HasGameRef<EmberQuestGame> {
  EmberPlayer({required super.position})
      : super(size: Vector2.all(64), anchor: Anchor.center);
  int horizontalDirection = 0;
  final Vector2 velocity = Vector2.zero();
  final double moveSpeed = 200;

  final Vector2 fromAbove = Vector2(0, -1);
  bool isOnGround = false;

  final double gravity = 15;
  final double jumpSpeed = 600;
  final double terminalVelocity = 150;

  bool hasJumped = false;

  @override
  void onLoad() {
    animation = SpriteAnimation.fromFrameData(
        game.images.fromCache('ember.png'),
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.12, textureSize: Vector2.all(16)));
    add(
      CircleHitbox(),
    );
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    horizontalDirection = 0;
    horizontalDirection += (keysPressed.contains(LogicalKeyboardKey.keyA) ||
            keysPressed.contains(LogicalKeyboardKey.arrowLeft))
        ? -1
        : 0;
    horizontalDirection += (keysPressed.contains(LogicalKeyboardKey.keyD) ||
            keysPressed.contains(LogicalKeyboardKey.arrowRight))
        ? 1
        : 0;

    hasJumped = keysPressed.contains(LogicalKeyboardKey.space);

    return true;
  }

  @override
  void update(double dt) {
    velocity.x = horizontalDirection * moveSpeed;
    position += velocity * dt;
    if (horizontalDirection < 0 && scale.x > 0) {
      flipHorizontally();
    } else if (horizontalDirection > 0 && scale.x < 0) {
      flipHorizontally();
    }
    velocity.y += gravity;

// Determine if ember has jumped
    if (hasJumped) {
      if (isOnGround) {
        velocity.y = -jumpSpeed;
        isOnGround = false;
      }
      hasJumped = false;
    }

// Prevent ember from jumping to crazy fast as well as descending too fast and
// crashing through the ground or a platform.
    velocity.y = velocity.y.clamp(-jumpSpeed, terminalVelocity);

    super.update(dt);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is GroundBlock || other is PlatformBlock) {
      if (intersectionPoints.length == 2) {
        // Calculate the collision normal and separation distance.
        final mid = (intersectionPoints.elementAt(0) +
                intersectionPoints.elementAt(1)) /
            2;

        final collisionNormal = absoluteCenter - mid;
        final separationDistance = (size.x / 2) - collisionNormal.length;
        collisionNormal.normalize();

        // If collision normal is almost upwards,
        // ember must be on ground.
        if (fromAbove.dot(collisionNormal) > 0.9) {
          isOnGround = true;
        }

        // Resolve collision by moving ember along
        // collision normal by separation distance.
        position += collisionNormal.scaled(separationDistance);
      }
    }

    super.onCollision(intersectionPoints, other);
  }
}

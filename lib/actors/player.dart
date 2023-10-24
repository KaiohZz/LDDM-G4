import 'dart:async';
import 'package:flame/components.dart';
import 'package:my_app/bitByBit.dart';

enum PlayerState {idle}

class Player extends SpriteAnimationGroupComponent with HasGameRef<BitByBit>{

  Player({position, required this.character}) : super(position: position);
  String character;
  late final SpriteAnimation idleAnimation; //converter pra animation no final
  final double stepTime = 0.05;

  @override
  FutureOr<void> onLoad() {
    
    _loadAllAnimations();

    return super.onLoad();
  }
  
  void _loadAllAnimations() {
    idleAnimation = _spriteAnimation('idle', 1);

    //Lista de Animações
    animations = {PlayerState.idle: idleAnimation};

    //Default = idle
    current = PlayerState.idle;
  }

  SpriteAnimation _spriteAnimation(String state, int frames) {
    return idleAnimation = SpriteAnimation.fromFrameData(
      game.images.fromCache('$character/$state.png'), 
      SpriteAnimationData.sequenced(
        amount: frames, 
        stepTime: stepTime, 
        textureSize: Vector2.all(32)
      )
    );
  }
}
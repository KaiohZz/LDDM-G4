import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:my_app/levels/tutorial.dart';

class BeatByBeat extends FlameGame {

  late final CameraComponent cam;

  final world = Tutorial();

  @override
  FutureOr<void> onLoad() {

    cam = CameraComponent.withFixedResolution(world: world, width: 384, height: 288);
    cam.viewfinder.anchor = Anchor.topLeft;
    
    addAll([cam, world]);

    return super.onLoad();
  }
}


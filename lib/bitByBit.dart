import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
//import 'package:my_app/stages/stage1.dart';

class BitByBit extends FlameGame {
  

  @override
  FutureOr<void> onLoad() async {

    await images.loadAllImages();

    late final CameraComponent camera;
    camera = CameraComponent.withFixedResolution(world: world, width: 640, height: 320);
    camera.viewfinder.anchor = Anchor.topLeft;

    addAll([camera, world]);
    return super.onLoad();
  }
}

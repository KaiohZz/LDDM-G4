import 'dart:async';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flame/components.dart';
import 'package:my_app/actors/player.dart';

class Stage1 extends World {
  late TiledComponent stage;

  @override
  FutureOr<void> onLoad() async {
    stage = await TiledComponent.load('stage1', Vector2.all(32));

    add(stage);
    final spawnPointsLayer = stage.tileMap.getLayer<ObjectGroup>('Spawnpoints');

    for(final spawnPoint in spawnPointsLayer!.objects){
      switch (spawnPoint.class_) {
        case 'Player':
          final player = Player(
            character: 'main_char', 
            position: Vector2(spawnPoint.x,spawnPoint.y)
            );
          add(player);
          break;
        default:
      }
    }

    return super.onLoad();
  }
}

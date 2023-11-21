import 'dart:async';
import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';

class Tutorial extends World{

  late TiledComponent tutorial;

  @override
  FutureOr<void> onLoad() async {
    
    tutorial = await TiledComponent.load('tutorial_stage.tmx', Vector2.all(32));

    add(tutorial);

    return super.onLoad();
  }
}
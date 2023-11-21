import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/beatByBeat.dart';

void main() {
  BeatByBeat game = BeatByBeat();  
  runApp(GameWidget(game: kDebugMode ? BeatByBeat() : game));
}
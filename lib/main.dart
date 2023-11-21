import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/about_screen.dart';
import 'package:my_app/screens/scores_screen.dart';
import 'package:my_app/screens/login_screen.dart';
import 'package:my_app/screens/options_screen.dart';
import 'package:my_app/screens/game_screen.dart';
import 'package:my_app/screens/beatByBeat.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  BeatByBeat game = BeatByBeat();  
  //runApp(GameWidget(game: kDebugMode ? BeatByBeat() : game));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bit-by-Bit',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
        ),
        home: const MyHomePage(
          title: 'Bit-by-Bit',
        ),
        routes: {
          //'/game_screen': (context) => GameScreen(),
          '/about_screen': (context) => const AboutScreen(),
          '/scores_screen': (context) => const ScoresScreen(),
          '/login_screen': (context) => const LoginScreen(),
          '/options_screen': (context) => const OptionsScreen(),
        });
  }
}

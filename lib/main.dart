import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/game_screen.dart';
import 'package:my_app/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
      ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bit-by-Bit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const Splash(),
      routes: {
        '/game_screen': (context) => GameScreen(),
      }
    );
  }
}
import "package:flutter/material.dart";
import 'package:my_app/widgets/custom_button.dart';
//import "package:my_app/game_screen.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';

  _startGame() async {
    //Navigator.pushNamed(context, GameScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/about_screen'),
                    buttonText: 'Sobre',
                  ),
                  CustomButton(
                    onPressed: _startGame,
                    buttonText: 'Opções',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bit-by-Bit',
                    style: TextStyle(
                      fontSize: 96.0,
                    ),
                  ),
                  CustomButton(
                    onPressed: _startGame,
                    buttonText: 'START',
                    borderRadius: 100.0,
                    width: 160.0,
                    height: 160.0,
                    buttonFontSize: 32.0,
                  ),
                  const Text(
                    '(C) Todos direitos reservados',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: _startGame,
                    buttonText: 'Login',
                  ),
                  CustomButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/scores_screen'),
                    buttonText: 'Scores',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:my_app/widgets/custom_button.dart';
//import "package:my_app/game_screen.dart";

class ScoresScreen extends StatefulWidget {
  const ScoresScreen({super.key});

  @override
  State<ScoresScreen> createState() => _ScoresScreenState();
}

class _ScoresScreenState extends State<ScoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomButton(
                    onPressed: () => Navigator.pop(context),
                    buttonText: 'Voltar',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onPressed: () => Navigator.pop(context),
                    buttonText: 'Voltar',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onPressed: () => (),
                    buttonText: 'GLOBAL',
                    width: 150.0,
                    height: 50.0,
                    borderRadius: 100.0,
                  ),
                  CustomButton(
                    onPressed: () => (),
                    buttonText: 'PESSOAL',
                    width: 150.0,
                    height: 50.0,
                    borderRadius: 100.0,
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

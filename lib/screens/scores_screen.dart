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
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ABC..............................XX',
                      style: TextStyle(
                        fontSize: 24.0,
                        backgroundColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
                  const SizedBox(
                    height: 20.0,
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

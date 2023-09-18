import "package:flutter/material.dart";
//import "package:my_app/game_screen.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';


  _startGame()async{
    //Navigator.pushNamed(context, GameScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 70, 70, 70),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { _startGame(); },
          child: const Text('go to game'),
        ),
      )
    );
  }
}

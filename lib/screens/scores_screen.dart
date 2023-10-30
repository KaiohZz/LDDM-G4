import "package:flutter/material.dart";
import 'package:my_app/widgets/custom_button.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//import "package:my_app/game_screen.dart";

class ScoresScreen extends StatefulWidget {
  const ScoresScreen({super.key});
  
  @override
  State<ScoresScreen> createState() => _ScoresScreenState();
}

class _ScoresScreenState extends State<ScoresScreen> {

  _recuperarDados() async {
    final caminhoDB = await getDatabasesPath();
    final localDB = join(caminhoDB, "scores.db");

    var retorno = await openDatabase(
      localDB, 
      version: 2,
      onCreate:(db, version) {
        String sql = "CREATE TABLE scores ("
                     "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                     "nome VARCHAR(20), pontos INTEGER)";
        db.execute(sql);
      }
    );

    print("Aberto" + retorno.isOpen.toString());
  }
  
  @override
  void initState() {
    _recuperarDados();
    super.initState();
  }

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

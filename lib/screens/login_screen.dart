import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _textController = TextEditingController();

  _recuperarDados() async {
    final caminhoDB = await getDatabasesPath();
    final localDB = join(caminhoDB, "users.db");

    var retorno = await openDatabase(
      localDB, 
      version: 1,
      onCreate:(db, version) {
        String sql = "CREATE TABLE users ("
                     "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                     "email VARCHAR, senha VARCHAR)";
        db.execute(sql);
      }
    );

    print("Aberto" + retorno.isOpen.toString());
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: () => Navigator.pop(context),
                    buttonText: 'Voltar',
                  ),
                  CustomButton(
                    onPressed: () => (), //_salvarDados(),
                    buttonText: 'Cadastrar',
                    height: 60.0,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(fontSize: 24.0),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite enderço de email',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Senha',
                          style: TextStyle(fontSize: 24.0),
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite a senha',
                          ),
                          controller: _textController,
                        ),
                      ],
                    ),
                    const ElevatedButton(
                      onPressed: null,
                      child: Text('Continuar com o Google'),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    onPressed: () => (),
                    buttonText: 'Entrar',
                    height: 60.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  /*
  _salvarDados(String email, String senha) async {
    Database db = await _recuperarDados();
    Map<String, dynamic> dadosUsuario = {
      "email" = email,
      "senha" = senha
      };
    int id = await db.insert("users", dadosUsuario);
    print("Salvo: $id");
  }
  */
}

import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_button.dart';
//import 'package:my_app/game_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    onPressed: () => (),
                    buttonText: 'Cadastrar',
                    height: 60.0,
                  ),
                ],
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nome do usuário',
                          style: TextStyle(fontSize: 24.0),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite o usuário',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Senha',
                          style: TextStyle(fontSize: 24.0),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Digite a senha',
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
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
}

import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _textController = TextEditingController();
  String nome = "";

  _iniciarNome() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      nome = prefs.getString('nome') ?? 'Insira nome do Jogador';
    });
    print("$nome carregado");
  }

  _startGame() async {
    nome = _textController.text;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", nome); // a chave será usada para recuperar dados
    print("Jogo iniciado, $nome salvo");
    //Navigator.pushNamed(context, '/game_screen');
  }
  
  @override
  void initState() {
    _iniciarNome();
    super.initState();
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
                    onPressed: () =>
                        Navigator.pushNamed(context, '/options_screen'),
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
                  /*
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: nome,
                    ),
                    controller: _textController,
                  ),
                  */
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
                    onPressed: () =>
                        Navigator.pushNamed(context, '/login_screen'),
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

import 'dart:math';
import 'package:flutter/material.dart';
import 'result_screen.dart';

class GameScreen extends StatefulWidget {
  final int minNumber;
  final int maxNumber;

  GameScreen({required this.minNumber, required this.maxNumber});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final _random = Random();
  late int _secretNumber;
  int? _userGuess;
  String _message = '';
  TextEditingController _controller = TextEditingController();
  int _attempts = 0;
  static const int maxAttempts = 5;

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  void _initializeGame() {
    _secretNumber = _random.nextInt(widget.maxNumber - widget.minNumber + 1) + widget.minNumber;
    _message = 'Adivinhe um número entre ${widget.minNumber} e ${widget.maxNumber}';
    _controller.clear();
    _attempts = 0;
  }

  void _checkGuess() {
    setState(() {
      _userGuess = int.tryParse(_controller.text);
      _attempts++;

      if (_userGuess != null) {
        if (_userGuess! == _secretNumber) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                message: 'Parabéns! Você acertou o número $_secretNumber em $_attempts tentativas',
              ),
            ),
          );
        } else if (_userGuess! < _secretNumber) {
          _message = 'Número baixo! Tente novamente';
        } else {
          _message = 'Número alto! Tente novamente';
        }

        if (_attempts >= maxAttempts) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                message: 'Você excedeu o número máximo de tentativas. O número era $_secretNumber',
              ),
            ),
          );
        }
      } else {
        _message = 'Por favor, insira um número válido';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adivinhe o Número'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _checkGuess,
              child: Text('Adivinhar'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Tentativas: $_attempts de $maxAttempts',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

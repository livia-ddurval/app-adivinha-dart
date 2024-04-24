import 'package:flutter/material.dart';
import 'main.dart';

class ResultScreen extends StatelessWidget {
  final String message;

  ResultScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelectionScreen(),
                  ),
                );
              },
              child: Text('Voltar para escolher nível'),
            ),
          ],
        ),
      ),
    );
  }
}

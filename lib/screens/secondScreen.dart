import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Regresar ...'),
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}

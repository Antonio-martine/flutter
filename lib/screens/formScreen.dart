import 'package:flutter/material.dart';

//statefulW
class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType
                  .emailAddress, //Colocar la tecla @ como principal dentro del teclado
              controller: _controller,
              decoration: const InputDecoration(
                //requerimientos correo
                labelText: 'Correo',
                hintText: 'correo@correo.com',
                prefixIcon: Icon(Icons.contact_mail),
                //icon: Icon(Icons.contact_mail)
              ),
            ),
            const SizedBox(height: 30.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Contraseña'),
            )
            /*  onSubmitted: (String value) async {
                await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Mensaje'),
                        content: Text(
                            'Has escrito "$value", y tiene una longitud de ${value.characters.length}'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Ok')),
                        ],
                      );
                    });
              },*/
          ],
        ),
      ),
    );
  }
}

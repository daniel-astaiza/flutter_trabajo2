import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _userError;
  String? _passwordError;
  String _userValue = '';
  String _passwordValue = '';

  void _validateInputs() {
    setState(() {
      _userError = _userValue.isEmpty ? 'Este campo es obligatorio' : null;
      _passwordError = _passwordValue.isEmpty ? 'Este campo es obligatorio' : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio de Sesión"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                _userValue = value;
              },
              decoration: InputDecoration(
                labelText: 'Usuario',
                errorText: _userError,
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              onChanged: (value) {
                _passwordValue = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                errorText: _passwordError,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _validateInputs,
              child: Text('Iniciar Sesión'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Registrarte'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Olvidaste la contraseña'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Registro"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(decoration: InputDecoration(labelText: 'Nombre Completo')),
            SizedBox(height: 12.0),
            TextField(decoration: InputDecoration(labelText: 'Nombre de Usuario')),
            SizedBox(height: 12.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 12.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirmar Password'),
            ),
            SizedBox(height: 12.0),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 12.0),
            TextField(decoration: InputDecoration(labelText: 'Telefono')),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Registrarse'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text('Cancelar'),
            )
          ],
        ),
      ),
    );
  }
}
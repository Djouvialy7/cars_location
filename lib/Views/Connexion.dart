import 'package:cars_location/Views/cars_overview.dart';
import 'package:cars_location/Views/inscription.dart';
import 'package:cars_location/screens/cars_overview.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  suffix: Icon(Icons.phonelink_ring_rounded),
                  labelText: 'Numéro de téléphone',
                  hintText: 'Entrez votre Numéro de téléphone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez saisir votre numéro de téléphone';
                  }
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffix: Icon(Icons.remove_red_eye),
                  labelText: 'Mot de passe',
                  hintText: 'entrez votre mot de passe ',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre mot de passe pour continuer.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform login action
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>CarsOverview()));
                },
                child: Text('Connexion'),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  'Vous n\'avez pas de compte? S\'inscrire',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 159, 160, 160),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

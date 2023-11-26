import 'package:flutter/material.dart';
import 'package:test_appi/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({super.key, required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 255, 200),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text('Rekisteröidy'),
        actions: <Widget>[
          ElevatedButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: (Icon(Icons.person_4_outlined)),
              label: Text('Kirjaudu'))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () async {
                  print(email);
                  print(password);
                },
                child: Text('Rekisteröidy'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

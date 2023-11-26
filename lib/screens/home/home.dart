import 'package:flutter/material.dart';
import 'package:test_appi/services/auth.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Hellou'),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _auth.signOut();
            },
            label: Text('Kirjaudu ulos'),
          ),
        ],
      ),
    );
  }
}

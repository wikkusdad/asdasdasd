import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_appi/models/user.dart';
import 'package:test_appi/screens/authenticate/authenticate.dart';
import 'package:test_appi/screens/home/home.dart';
//import 'package:test_appi/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(context) {
    final user = Provider.of<FbUser?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

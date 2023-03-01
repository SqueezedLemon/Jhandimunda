import 'package:flutter/material.dart';
import './components/body.dart';

class DiceScreen extends StatelessWidget {
  static const routeName = '/dice';
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

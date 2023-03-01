import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jhandimunda/dice/components/dice_widget.dart';
import 'package:jhandimunda/dice/dice_screen.dart';
import 'package:jhandimunda/providers/dice_provider.dart';
import 'package:jhandimunda/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DiceProvider(),
        child: MaterialApp(
          title: 'Jhandi Munda',
          theme: theme(),
          home: DiceScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}

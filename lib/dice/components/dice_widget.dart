import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:provider/provider.dart';
import '../../../providers/dice_provider.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final diceProvider = Provider.of<DiceProvider>(context);

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: UnityWidget(
        fullscreen: false,
        borderRadius: BorderRadius.zero,
        onUnityCreated: diceProvider.onUnityCreated,
        onUnityMessage: diceProvider.onUnityMessage,
      ),
    );
  }
}

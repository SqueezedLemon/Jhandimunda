import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:shake/shake.dart';

class DiceProvider extends ChangeNotifier {
  late UnityWidgetController unityWidgetController;
  late ShakeDetector detector;

  void startShakeDetection() {
    detector = ShakeDetector.waitForStart(onPhoneShake: () {
      print('rolling dice');
      rollDice();

      detector.stopListening();
    });
    detector.startListening();
  }

  Future<void> onUnityCreated(controller) async {
    unityWidgetController = controller;

    await unityWidgetController.pause();

    Future.delayed(
      Duration(milliseconds: 100),
      () async {
        await this.unityWidgetController.resume();
      },
    );
  }

  @override
  void dispose() {
    unityWidgetController.dispose();
    super.dispose();
  }
  // void invokeDicePopup(BuildContext context) {
  //   if (!rest) {
  //     show(context);
  //   }
  // }

  void onUnityMessage(message) {}

  void rollDice() {
    unityWidgetController.postMessage(
      'dice (1)',
      'RollDice',
      'rollDice',
    );
    unityWidgetController.postMessage(
      'dice (2)',
      'RollDice',
      'rollDice',
    );
    unityWidgetController.postMessage(
      'dice (3)',
      'RollDice',
      'rollDice',
    );
    unityWidgetController.postMessage(
      'dice (4)',
      'RollDice',
      'rollDice',
    );
    unityWidgetController.postMessage(
      'dice (5)',
      'RollDice',
      'rollDice',
    );
    unityWidgetController.postMessage(
      'dice (6)',
      'RollDice',
      'rollDice',
    );
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dice_widget.dart';
import '../../../providers/dice_provider.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  bool isLoading = true;

  @override
  void didChangeDependencies() {
    Provider.of<DiceProvider>(context, listen: false).startShakeDetection();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(milliseconds: 100),
      () async {
        setState(() {
          isLoading = false;
        });
      },
    );
    final diceProvider = Provider.of<DiceProvider>(context);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Text(
              'JHANDI MUNDA',
              style: Theme.of(context).textTheme.headline1,
            ),
            Expanded(child: DiceWidget()),
          ],
        ),
      ),
      // Container(
      //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      //   child: Column(
      //     children: [
      //       isLoading ? SizedBox() : DiceSettings(),
      //       const DiceWidget(),
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //       //   children: [
      //       //     Padding(
      //       //       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
      //       //       child: Text(
      //       //         diceProvider.rolledText(),
      //       //         style: TextStyle(fontSize: 32),
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}

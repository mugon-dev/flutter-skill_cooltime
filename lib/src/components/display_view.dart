import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/app.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class DisplayView extends StatelessWidget {
  const DisplayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int i = 0;
    // button controller 구독
    return StreamBuilder(
      stream: buttonController.actionButtonStream,
      builder: (_, AsyncSnapshot<ButtonType> snapshot) {
        i++;
        return Text(
          i.toString(),
          style: TextStyle(fontSize: 100),
        );
      },
    );
  }
}

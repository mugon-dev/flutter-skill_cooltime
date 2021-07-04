import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/Cooltime_button.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class ActionButtonZone extends StatelessWidget {
  const ActionButtonZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CooltimeButton(
            coolTime: 10,
            type: ButtonType.SKILL1,
            skillAnimationTime: 800,
            buttonSize: Size(70, 70),
            buttonName: '',
          ),
          SizedBox(width: 10),
          CooltimeButton(
            coolTime: 4,
            type: ButtonType.SKILL2,
            skillAnimationTime: 2800,
            buttonSize: Size(70, 70),
            buttonName: '',
          ),
        ],
      ),
    );
  }
}

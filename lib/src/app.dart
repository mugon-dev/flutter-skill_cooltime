import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/Cooltime_button.dart';
import 'package:skill_cooltime/src/components/display_view.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: DisplayView()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CooltimeButton(
                  buttonSize: Size(70, 70),
                  skillAnimationTime: 800,
                  buttonName: '',
                  coolTime: 20,
                  type: ButtonType.SKILL1,
                ),
                SizedBox(width: 10),
                CooltimeButton(
                  buttonSize: Size(70, 70),
                  skillAnimationTime: 2800,
                  buttonName: '',
                  coolTime: 5,
                  type: ButtonType.SKILL2,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

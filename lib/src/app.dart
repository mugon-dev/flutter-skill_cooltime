import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/Cooltime_button.dart';
import 'package:skill_cooltime/src/components/display_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DisplayView(),
            CooltimeButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/display_view.dart';
import 'package:skill_cooltime/src/pages/action_button_zone.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: DisplayView())),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: ActionButtonZone(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/Cooltime_button.dart';
import 'package:skill_cooltime/src/components/display_view.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

// 전역으로 선언
ButtonController buttonController = ButtonController();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    buttonController.dispose();
  }

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

import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/app.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class CooltimeButton extends StatefulWidget {
  const CooltimeButton({Key? key}) : super(key: key);

  @override
  _CooltimeButtonState createState() => _CooltimeButtonState();
}

class _CooltimeButtonState extends State<CooltimeButton> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: _actionButton,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 100,
            height: 100,
            color: isActive
                ? Colors.grey.withOpacity(0.5)
                : Colors.black.withOpacity(0.8),
            child: Center(
              child: Text(
                "Button",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeState(bool state) {
    setState(() {
      isActive = state;
    });
  }

  void _actionButton() {
    if (isActive) {
      _changeState(false);
      buttonController.action(ButtonType.ACTION1);
      Future.delayed(Duration(seconds: 2), () {
        _changeState(true);
      });
    }
  }
}

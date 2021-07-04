import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/app.dart';
import 'package:skill_cooltime/src/components/progress_animate_container.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class CooltimeButton extends StatefulWidget {
  const CooltimeButton({Key? key}) : super(key: key);

  @override
  _CooltimeButtonState createState() => _CooltimeButtonState();
}

class _CooltimeButtonState extends State<CooltimeButton>
    with SingleTickerProviderStateMixin {
  bool isActive = true;

  AnimationController? animationController;
  Animation<double>? animation;
  int delay = 3;
  double _progress = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: delay));
    animation = Tween<double>(begin: 0, end: 1.0).animate(
      new CurvedAnimation(parent: animationController!, curve: Curves.linear),
    )..addListener(() {
        setState(() {
          _progress = animation!.value;
          if (animation!.isCompleted) {
            _changeState(true);
          }
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: _actionButton,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: ProgressAnimateContainer(
            width: 100.0,
            height: 100.0,
            progress: _progress,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey.withOpacity(0.4),
              child: Center(
                child: Text(
                  "Button",
                  style: TextStyle(fontSize: 20),
                ),
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
      animationController!.forward(from: 0);
      buttonController.action(ButtonType.ACTION1);
    }
  }
}

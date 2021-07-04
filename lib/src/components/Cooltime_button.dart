import 'package:flutter/material.dart';
import 'package:skill_cooltime/src/components/progress_animate_container.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

class CooltimeButton extends StatefulWidget {
  final ButtonType type;
  final int coolTime;
  final int skillAnimationTime;
  final String buttonName;
  final Size buttonSize;
  CooltimeButton(
      {Key? key,
      required this.type,
      required this.buttonName,
      required this.buttonSize,
      required this.coolTime,
      required this.skillAnimationTime})
      : super(key: key);

  @override
  _CooltimeButtonState createState() => _CooltimeButtonState();
}

class _CooltimeButtonState extends State<CooltimeButton>
    with SingleTickerProviderStateMixin {
  bool isActive = true;

  AnimationController? animationController;
  Animation<double>? animation;
  double _progress = 0.0;
  String skillName = "";

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: widget.coolTime));
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

    _setSkillName();
    super.initState();
  }

  void _setSkillName() {
    switch (widget.type) {
      case ButtonType.IDLE:
        // TODO: Handle this case.
        break;
      case ButtonType.SKILL1:
        skillName = "skill1";
        break;
      case ButtonType.SKILL2:
        skillName = "skill2";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: _actionButton,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ProgressAnimateContainer(
            progress: _progress,
            width: widget.buttonSize.width,
            height: widget.buttonSize.height,
            child: Container(
              color: Colors.grey.withOpacity(0.4),
              child: Image.asset("assets/$skillName.jpg", fit: BoxFit.fitWidth),
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
      ButtonController.to.action(widget.type);
      Future.delayed(Duration(milliseconds: widget.skillAnimationTime), () {
        ButtonController.to.action(ButtonType.IDLE);
      });
    }
  }
}

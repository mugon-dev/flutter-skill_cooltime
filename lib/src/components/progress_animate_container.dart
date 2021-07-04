import 'dart:math';

import 'package:flutter/material.dart';

class ProgressAnimateContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final double? progress;
  const ProgressAnimateContainer(
      {Key? key,
      required this.width,
      required this.height,
      this.child,
      this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: progress == 0
          ? child
          : CustomPaint(
              size: Size(25, (50 * 1.1666666666666667).toDouble()),
              foregroundPainter: ProgressAnimatePainter(progress!),
              child: child,
            ),
    );
  }
}

class ProgressAnimatePainter extends CustomPainter {
  double progress;
  ProgressAnimatePainter(this.progress);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black.withOpacity(0.8);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    Offset center = Offset(size.width / 2, size.height / 2);
    double arcAngle = 2 * pi * (1 - progress);

    // 호를 그려줌
    canvas.drawArc(Rect.fromCircle(center: center, radius: 100), -pi / 2,
        -1 * arcAngle, true, paint);
  }

  // 화면 다시 그려줄까?
  @override
  bool shouldRepaint(covariant ProgressAnimatePainter oldDelegate) {
    // TODO: implement shouldRepaint
    // 이전 프레임 값과 지금 프레임 값이 같지 않으면 다시 그려라
    throw this.progress != oldDelegate.progress;
  }
}

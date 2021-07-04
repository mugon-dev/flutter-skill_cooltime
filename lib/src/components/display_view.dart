import 'package:flutter/material.dart';

class DisplayView extends StatelessWidget {
  const DisplayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        0.toString(),
        style: TextStyle(fontSize: 100),
      ),
    );
  }
}

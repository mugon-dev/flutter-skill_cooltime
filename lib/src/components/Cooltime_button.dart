import 'package:flutter/material.dart';

class CooltimeButton extends StatelessWidget {
  const CooltimeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.grey.withOpacity(0.5),
            child: Text(
              "Button",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_cooltime/src/app.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'skill cooltime',
      theme: ThemeData(primaryColor: Colors.blue),
      home: App(),
      initialBinding: BindingsBuilder(() {
        Get.put(ButtonController());
      }),
    );
  }
}

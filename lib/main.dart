import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_cooltime/src/app.dart';
import 'package:skill_cooltime/src/controller/button_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(ButtonController());
      }),
      home: App(),
    );
  }
}

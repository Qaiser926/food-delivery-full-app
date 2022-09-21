import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:food_develry_app/pages/homePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MyApp(),
    // DevicePreview(
    //   builder: (context) => MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

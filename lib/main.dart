import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/home/presentation/views/home_view.dart';
import 'features/splach/presentation/views/splach_view.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplachView(),
    );
  }
}

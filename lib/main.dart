// ignore_for_file: unnecessary_this, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/myHomePage.dart';

// void main() {
//   runApp(const MyApp());
// }
late List<CameraDescription> _cameras;
List<CameraDescription> getCameras() {
  return _cameras;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArchVistaExplore',
      theme: baseTheme,
      home: MyHomePage(),
    );
  }
}

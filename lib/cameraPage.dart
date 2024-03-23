import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/main.dart';

class CameraPage extends StatefulWidget {
  CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(getCameras()[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
        body: Column(children: <Widget>[
      AppBar(
        backgroundColor: colorAccent,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      CameraPreview(controller),
    ]));
  }
}

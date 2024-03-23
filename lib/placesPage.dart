import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';

class PlacesPage extends StatefulWidget {
  PlacesPage({super.key});

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: COLOR_ACCENT,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(),
    );
  }
}

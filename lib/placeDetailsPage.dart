import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/placeData.dart';

class PlaceDetailsPage extends StatefulWidget {
  PlaceData placeData;
  PlaceDetailsPage(this.placeData, {super.key});

  @override
  State<PlaceDetailsPage> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorAccent,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Text(widget.placeData.name));
  }
}

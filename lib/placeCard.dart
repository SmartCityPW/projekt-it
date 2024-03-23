import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/placeData.dart';

class PlaceCard extends StatefulWidget {
  PlaceData placeData;
  PlaceCard(this.placeData, {super.key});

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Text(widget.placeData.name));
  }
}

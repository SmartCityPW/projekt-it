import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/placeData.dart';
import 'package:projekt_it/placeCard.dart';

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
        backgroundColor: colorAccent,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Places",
          style: fontHeaderMedium.copyWith(
              color: const Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      body: ListView.builder(
        itemCount: placesData.length,
        itemExtent: MediaQuery.of(context).size.height / 5,
        padding: EdgeInsets.only(top: 20),
        itemBuilder: (context, index) {
          return PlaceCard(placesData[index]);
        },
      ),
    );
  }
}

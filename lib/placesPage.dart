import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:projekt_it/placeData.dart';

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
        itemBuilder: (context, index) {
          return Card(child: Text(placesData[index].name));
        },
      ),
    );
  }
}

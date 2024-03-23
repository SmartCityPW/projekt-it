import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
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
    return Card(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Text(
                  widget.placeData.name,
                  style: fontBody,
                ),
                Expanded(child: Image.asset(widget.placeData.imgPaths[0]))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(widget.placeData.name),
                      content: Text(
                          "${widget.placeData.street} ${widget.placeData.streetNr}\nlat: ${widget.placeData.latitude} lng: ${widget.placeData.longtitude}"),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"))
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.location_on_sharp)),
          ),
          Expanded(
              flex: 1,
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.list)))
        ]));
  }
}

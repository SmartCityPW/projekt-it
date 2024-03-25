import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Column(
              children: [
                Text(
                  widget.placeData.name,
                  style: fontHeaderMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      widget.placeData.constructionDate,
                      style: fontHeaderMedium.copyWith(fontSize: 19),
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "${widget.placeData.street} ${widget.placeData.streetNr}",
                          style: fontBody,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_on_sharp)),
                      ],
                    )
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                  items: widget.placeData.imgPaths.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(i);
                      },
                    );
                  }).toList(),
                ),
                Divider(),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (String funFact in widget.placeData.funFacts)
                        Text(
                          "- ${funFact}",
                        )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(
                    widget.placeData.description,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

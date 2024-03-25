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
          child: Column(
            children: [
                  Text(
                    widget.placeData.name,
                    style: fontHeaderMedium,
                  ),
                  Text(
                    widget.placeData.constructionDate,
                    style: fontFancySmall,
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
                  Divider()
                ] +
                [
                  for (String funFact in widget.placeData.funFacts)
                    Text(funFact)
                ] +
                [
                  Divider(),
                  Text(
                    widget.placeData.description,
                  )
                ],
          ),
        ));
  }
}

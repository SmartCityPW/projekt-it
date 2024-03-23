import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projekt_it/homePageButton.dart';
import 'package:projekt_it/cameraPage.dart';
import 'package:projekt_it/mapPage.dart';
import 'package:projekt_it/placesPage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  List<String> carouseleImagePaths = [
    'lib/assets/carousele1.jpg',
    'lib/assets/carousele2.jpg',
    'lib/assets/carousele3.jpg',
    'lib/assets/carousele4.png',
    'lib/assets/carousele5.jpg',
    'lib/assets/carousele6.jpg'
  ];
  List<String> carouseleImageNames = [
    'Barbakan',
    'Centrum',
    'Rotunda',
    'BUW',
    'Stare Miasto',
    'Kamienica Ochota'
  ];

  int currentImageIndex = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: COLOR_ACCENT,
          toolbarHeight: kToolbarHeight + 10,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_sharp),
                  iconSize: 40,
                  color: Colors.white,
                )
              ],
            )
          ]),
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              color: COLOR_ACCENT),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "hello User",
                    style: FONT_FANCY_SMALL.copyWith(
                        color: const Color.fromRGBO(212, 175, 55, 1)),
                    textAlign: TextAlign.left,
                  )),
              Text("what place will you visit today?",
                  style: FONT_HEADING_MEDIUM.copyWith(
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.center),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      widget.currentImageIndex = index;
                    });
                  },
                ),
                items: widget.carouseleImagePaths.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(color: COLOR_ACCENT),
                          child: Image.asset(i));
                    },
                  );
                }).toList(),
              ),
              Text(widget.carouseleImageNames[widget.currentImageIndex],
                  style: FONT_FANCY_SMALL.copyWith(
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.center),
            ],
          )),
        )),
        Expanded(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomePageButton(
                        'lib/assets/home_page_map.jpg',
                        "map",
                        () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapPage()))
                            }),
                    HomePageButton(
                        'lib/assets/home_page_places.jpg',
                        "places",
                        () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlacesPage()))
                            })
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomePageButton('lib/assets/home_page_visited.jpg',
                        "visited", () => {}),
                    HomePageButton(
                        'lib/assets/home_page_other.png',
                        "camera",
                        () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CameraPage()))
                            })
                  ]),
            ],
          )),
        ),
      ]),
      backgroundColor: COLOR_BACK,
    );
  }
}

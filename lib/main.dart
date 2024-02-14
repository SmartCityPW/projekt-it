// ignore_for_file: unnecessary_this, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArchVistaExplore',
      theme: baseTheme,
      home: MyHomePage(),
    );
  }
}

class HomePageButton extends StatelessWidget {
  String imagePath;
  String title;
  Function()? onTap;
  HomePageButton(this.imagePath, this.title, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)),
            ),
            child: Image.asset(imagePath, fit: BoxFit.none),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style:
                FONT_HEADING_MEDIUM.copyWith(color: Color.fromRGBO(0, 0, 0, 1)),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  icon: Icon(Icons.menu_sharp),
                  iconSize: 40,
                  color: Colors.white,
                )
              ],
            )
          ]),
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          decoration: BoxDecoration(
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
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "hello User",
                    style: FONT_FANCY_SMALL.copyWith(
                        color: Color.fromRGBO(212, 175, 55, 1)),
                    textAlign: TextAlign.left,
                  )),
              Text("what place will you visit today?",
                  style: FONT_HEADING_MEDIUM.copyWith(
                      color: Color.fromRGBO(255, 255, 255, 1)),
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
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: COLOR_ACCENT),
                          child: Image.asset(i));
                    },
                  );
                }).toList(),
              ),
              Text(widget.carouseleImageNames[widget.currentImageIndex],
                  style: FONT_FANCY_SMALL.copyWith(
                      color: Color.fromRGBO(255, 255, 255, 1)),
                  textAlign: TextAlign.center),
            ],
          )),
        )),
        Expanded(
          child: Container(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HomePageButton(
                          'lib/assets/home_page_map.jpg', "map", () => {}),
                      HomePageButton(
                          'lib/assets/home_page_places.jpg', "places", () => {})
                    ]),
                // children: <Widget>[Text("abcdefg"), Text("hijklmn")]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HomePageButton('lib/assets/home_page_visited.jpg',
                          "visited", () => {}),
                      HomePageButton(
                          'lib/assets/home_page_other.png', "other", () => {})
                    ]),
              ],
            )),
          ),
        ),
      ]),
      backgroundColor: COLOR_BACK,
    );
  }
}

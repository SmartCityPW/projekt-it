import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:projekt_it/constants/colors.dart';
import 'package:projekt_it/constants/images.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  //
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
            backgroundColor: ColorPalette().backgroundColor,
            appBar: AppBar(
                backgroundColor: ColorPalette().primaryColor,
                leading: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu_rounded,
                      color: ColorPalette().backgroundColor,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                )),
            body: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorPalette().primaryColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello User",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.meddon(
                                color: ColorPalette().textColor),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "What place will you visit today?",
                            style: GoogleFonts.prata(
                                color: ColorPalette().backgroundColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 235.0,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5)),
                      items: [1, 2].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image: AssetImage([
                                      Images.romeImage,
                                      Images.romeImage2,
                                      Images.romeImage,
                                    ][i]),
                                    height: 200,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  ["Colosseum", "Pantheon", "Colosseum"][i],
                                  style: GoogleFonts.meddon(
                                      color: ColorPalette().backgroundColor,
                                      fontSize: 16),
                                )
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListTile(
                      tileColor: ColorPalette().primaryColor.withAlpha(215),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onTap: () {},
                      title: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                IconsPalette.mapIcon,
                              ),
                              width: 40,
                              height: 40),
                          SizedBox(width: 24),
                          Text(
                            "Maps",
                            style: GoogleFonts.prata(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListTile(
                      tileColor: ColorPalette().primaryColor.withAlpha(215),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onTap: () {},
                      title: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                IconsPalette.placesIcon,
                              ),
                              width: 40,
                              height: 40),
                          SizedBox(width: 24),
                          Text(
                            "Places",
                            style: GoogleFonts.prata(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListTile(
                      tileColor: ColorPalette().primaryColor.withAlpha(215),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onTap: () {},
                      title: Row(
                        children: [
                          Image(
                              image: AssetImage(
                                IconsPalette.visitedIcon,
                              ),
                              width: 40,
                              height: 40),
                          SizedBox(width: 24),
                          Text(
                            "Visited",
                            style: GoogleFonts.prata(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40)
            ])),
      ),
    );
  }
}

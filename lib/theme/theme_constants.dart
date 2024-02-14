// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const COLOR_PRIMARY = Color.fromRGBO(87, 74, 115, 1);
const COLOR_ACCENT = Color.fromRGBO(37, 32, 79, 1);
const COLOR_BACK = Color.fromRGBO(234, 231, 220, 1);
const FONT_BASIC = TextStyle(fontFamily: 'Montserrat', fontSize: 20);
const FONT_FANCY_SMALL = TextStyle(fontFamily: 'Meddon', fontSize: 16);
const FONT_HEADING_MEDIUM = TextStyle(fontFamily: 'Prata', fontSize: 24);

ThemeData baseTheme = ThemeData(
    brightness: Brightness.light,
    // primaryColor: COLOR_PRIMARY,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: COLOR_ACCENT),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))))),
    fontFamily: 'Montserrat');

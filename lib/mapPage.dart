// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projekt_it/theme/theme_constants.dart';

class MapPage extends StatefulWidget {
  MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // String? _currentAddress;
  Position? _currentPosition;
  String statusText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorAccent,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
        ),
        body: Center(
          child: Column(children: <Widget>[
            SizedBox(height: 50),
            Text('LAT: ${_currentPosition?.latitude ?? "none"}'),
            Text('LNG: ${_currentPosition?.longitude ?? "none"}'),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: _getCurrentPosition,
                child: Text("Update location")),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  if (_currentPosition?.latitude == null ||
                      _currentPosition?.longitude == null) {
                    setState(() {
                      statusText = "First update your location";
                    });
                  } else {
                    setState(() {
                      statusText = "";
                    });
                    openMapsSheet(context);
                  }
                },
                child: Text("Show Maps")),
            Text(statusText)
          ]),
        ));
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  openMapsSheet(context) async {
    try {
      final coords = Coords(_currentPosition?.latitude ?? 0,
          _currentPosition?.longitude ?? 0);
      const title = "Your location";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in availableMaps)
                    ListTile(
                      onTap: () => map.showMarker(
                        coords: coords,
                        title: title,
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
    }
  }
}

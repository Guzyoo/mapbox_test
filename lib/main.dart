import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MapboxMapPage(),
      ),
    );
  }
}

class MapboxMapPage extends StatefulWidget {
  @override
  _MapboxMapPageState createState() => _MapboxMapPageState();
}

class _MapboxMapPageState extends State<MapboxMapPage> {
  late MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapbox in Flutter'),
      ),
      body: MapboxMap(
        accessToken:
            'sk.eyJ1Ijoic21pbHloeGMiLCJhIjoiY2x3amR3ZXZtMHNsdjJpcGZ2dW1xcDlwNiJ9.no1_LQIVdKO2XQfkRdlHuw',
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(-6.834425, 108.225028),
          zoom: 10.0,
        ),
      ),
    );
  }
}

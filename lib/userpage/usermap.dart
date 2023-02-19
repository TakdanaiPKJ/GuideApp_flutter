import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserMap extends StatefulWidget {
  const UserMap({super.key});

  @override
  State<UserMap> createState() => _UserMapState();
}

class _UserMapState extends State<UserMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(16, 100),
          zoom: 9.2,
        ),
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: null,
          ),
        ],
        children: [
          TileLayer(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/prxmz/clebbhxgy000501pq0y4l0088/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicHJ4bXoiLCJhIjoiY2xlYmIxaXd0MTdnejN2cjFxd2huZHQ0MiJ9.M_UA7jSW68pQGvr2Mbz8DQ',
            additionalOptions: const {
              'AccessToken': 'generate access toekn',
              'id': 'mapbox.mapbox-streets-v8'
            },
          ),
        ],
      ),
    );
  }
}

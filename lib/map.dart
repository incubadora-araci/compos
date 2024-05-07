import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition IACS = CameraPosition(
    target: LatLng(-22.89799942836415, -43.13483046292866),
    zoom: 15.3,
  );

  static const CameraPosition _kLake = CameraPosition(
      target: LatLng(-22.89799942836415, -43.13483046292866),
      zoom: 15.3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: IACS,
        markers: {
          const Marker(
            markerId: MarkerId('sourceLocation'),
            icon: BitmapDescriptor.defaultMarker,
            position: LatLng(-22.89799942836415, -43.13483046292866)
            )
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('Centralizar'),
        icon: const Icon(Icons.accessibility),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

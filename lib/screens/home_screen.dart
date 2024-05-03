import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/widgets/drawer/custom_drawer.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static LatLng googlePlex = const LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: googlePlex,
          zoom: 13,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("sourceLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: googlePlex,
          ),
        },
      ),
      drawer: const CustomDrawer(),
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static LatLng googlePlex = const LatLng(37.4223, -122.0848);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const LatLng _kGooglePlex = LatLng(37.42796133580664, -122.085749655962);
  static const LatLng _mountainView = LatLng(38.42796133580664, -122.085749655962);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: const CameraPosition(
          target: _kGooglePlex,
          zoom: 13.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId("sourceLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _kGooglePlex,
          ),
          const Marker(
            markerId: MarkerId("destinationLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _mountainView,
          ),
        },
      ),
    );
  }
}

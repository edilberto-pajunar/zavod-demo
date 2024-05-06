import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/bloc/map/map_bloc.dart';
import 'package:zavod_demo/widgets/drawer/custom_drawer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _onTap() async {
    
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapBloc()
        ..add(UpdateMapHome(
          context: context,
          onTap: _onTap,
        )),
      child: BlocBuilder<MapBloc, MapState>(
        builder: (context, state) {
          if (state is MapLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is MapLoaded) {
            return Scaffold(
              drawer: const CustomDrawer(),
              appBar: AppBar(
                actions: [
                  TextButton(
                    onPressed: () async {
                      context.read<MapBloc>().add(const SelectRandomPoint());

                      final GoogleMapController controller = await _controller.future;
                      controller.animateCamera(CameraUpdate.newLatLng(state.target));
                    },
                    child: const Text("Go to random mark"),
                  ),
                ],
              ),
              body: SafeArea(
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: CameraPosition(
                    target: state.target,
                    zoom: 8.0,
                  ),
                  onMapCreated: _onMapCreated,
                  markers: Set<Marker>.of(state.randomPoints),
                ),
              ),
            );
          } else {
            return const Center(
              child: Text("Something went wrong."),
            );
          }
        },
      ),
    );
  }
}

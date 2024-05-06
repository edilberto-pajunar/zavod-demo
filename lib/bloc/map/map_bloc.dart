import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/config/router/router.gr.dart';
import 'package:zavod_demo/model/place.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapLoading()) {
    on<UpdateMapHome>(_onUpdateMapHome);
    on<SelectRandomPoint>(_onSelectRandomPoint);
  }

  void _onUpdateMapHome(UpdateMapHome event, emit) {
    emit(MapLoading());
    final List<LatLng> randomTargetPoints = [
      const LatLng(37.7749, -122.4194),
      const LatLng(40.7128, -74.0060),
      const LatLng(34.0522, -118.2437),
      const LatLng(51.5074, -0.1278),
      const LatLng(48.8566, 2.3522),
      const LatLng(35.6895, 139.6917),
      const LatLng(41.8781, -87.6298),
      const LatLng(37.5665, 126.9780),
      const LatLng(31.2304, 121.4737),
      const LatLng(19.0760, 72.8777),
    ];
    final List<Marker> randomPoints = [];
    final Random random = Random();

    for (int i = 0; i < 7; i++) {
      final lat = randomTargetPoints[random.nextInt(randomTargetPoints.length)].latitude;
      final lng = randomTargetPoints[random.nextInt(randomTargetPoints.length)].longitude;
      randomPoints.add(
        Marker(
          markerId: MarkerId("$i"),
          position: LatLng(lat, lng),
          infoWindow: InfoWindow(title: "Random Point: $i"),
          onTap: () async {
            await placemarkFromCoordinates(lat, lng).then((value) async {
              await showDialog(
                context: event.context,
                builder: (context) {
                  final Place place = Place(
                    name: value.first.name ?? "",
                    street: value.first.street ?? "",
                  );

                  return AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pushRoute(MapDetailRoute(place: place));
                        },
                        child: const Text("See more..."),
                      ),
                    ],
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Name:",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(place.name),
                          const Text(
                            "Street:",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(place.street),
                        ],
                      ),
                    ),
                  );
                },
              );
            });
          },
        ),
      );
    }
    emit(MapLoaded(
      randomPoints: randomPoints,
      target: randomPoints.first.position,
    ));
  }

  void _onSelectRandomPoint(SelectRandomPoint event, emit) {
    final state = this.state as MapLoaded;
    final int random = Random().nextInt(7);

    final updatedState = state.copyWith(
      target: state.randomPoints[random].position,
    );

    emit(updatedState);
  }
}

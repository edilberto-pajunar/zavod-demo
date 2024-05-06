import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/bloc/map/map_bloc.dart';

void main() {
  group("MapState", () {
    test("supports value comparisons", () {
      expect(MapState, MapState);
    });

    test("MapLoaded should be equatable", () {
      final List<Marker> randomPoints = [];
      const LatLng target = LatLng(0, 0);

      expect(
          MapLoaded(randomPoints: randomPoints, target: target),
          MapLoaded(
            randomPoints: randomPoints,
            target: target,
          ));
    });
  });
}

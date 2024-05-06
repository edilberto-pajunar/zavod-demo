import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/bloc/map/map_bloc.dart';

void main() {
  late MapBloc mapBloc;

  setUp(() {
    mapBloc = MapBloc();
  });

  test("initial state should be loading", () {
    expect(mapBloc.state, MapLoading());
  });

  const LatLng target = LatLng(0.0, 0.0);

  blocTest<MapBloc, MapState>(
    'emits [MapLoading, MapLoaded] when data is gotten successfully!',
    build: () => MapBloc(),
    act: (bloc) => bloc.add(const UpdateMapHome()),
    expect: () => [
      isA<MapLoading>(),
      isA<MapLoaded>(),
    ],
  );
}

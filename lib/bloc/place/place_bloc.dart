import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/model/place.dart';

part 'place_event.dart';
part 'place_state.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  PlaceBloc() : super(PlaceLoading()) {
    on<UpdatePlace>(_onUpdatePlace);
  }

  void _onUpdatePlace(UpdatePlace event, Emitter<PlaceState> emit) async {
    final Placemark placemark = (await placemarkFromCoordinates(event.target.latitude, event.target.longitude)).first;
    final Place place = Place(name: placemark.name ?? "", street: placemark.street ?? "");

    emit(PlaceLoaded(place: place));
  }
}

part of 'place_bloc.dart';

sealed class PlaceEvent extends Equatable {
  const PlaceEvent();

  @override
  List<Object> get props => [];
}

class UpdatePlace extends PlaceEvent {
  final LatLng target;
  const UpdatePlace({
    required this.target,
  });

  @override
  List<Object> get props => [target];
}

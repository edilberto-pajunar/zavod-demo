part of 'map_bloc.dart';

sealed class MapState extends Equatable {
  const MapState();

  @override
  List<Object> get props => [];
}

final class MapLoading extends MapState {}

final class MapLoaded extends MapState {
  final List<Marker> randomPoints;
  final LatLng target;

  const MapLoaded({
    required this.randomPoints,
    required this.target,
  });

  @override
  List<Object> get props => [randomPoints, target];

  MapLoaded copyWith({
    List<Marker>? randomPoints,
    LatLng? target,
  }) {
    return MapLoaded(
      randomPoints: randomPoints ?? this.randomPoints,
      target: target ?? this.target,
    );
  }
}

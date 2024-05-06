part of 'map_bloc.dart';

sealed class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class UpdateMapHome extends MapEvent {
  final Function()? onTap;

  const UpdateMapHome({
    this.onTap,
  });

  @override
  List<Object?> get props => [onTap];
}

class PopupShow extends MapEvent {
  final LatLng target;
  const PopupShow({
    required this.target,
  });

  @override
  List<Object?> get props => [target];
}

class SelectRandomPoint extends MapEvent {
  const SelectRandomPoint();

  @override
  List<Object?> get props => [];
}

part of 'map_bloc.dart';

sealed class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class UpdateMapHome extends MapEvent {
  final Function()? onTap;
  final BuildContext context;

  const UpdateMapHome({
    this.onTap,
    required this.context,
  });

  @override
  List<Object?> get props => [onTap, context];
}

class SelectRandomPoint extends MapEvent {
  const SelectRandomPoint();

  @override
  List<Object?> get props => [];
}

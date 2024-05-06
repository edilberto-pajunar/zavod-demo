import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zavod_demo/bloc/map/map_bloc.dart';
import 'package:zavod_demo/bloc/place/place_bloc.dart';

@RoutePage()
class MapDetailScreen extends StatelessWidget {
  const MapDetailScreen({
    required this.target,
    super.key,
  });

  final LatLng target;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: BlocProvider(
        create: (context) => PlaceBloc()..add(UpdatePlace(target: target)),
        child: BlocBuilder<PlaceBloc, PlaceState>(
          builder: (context, state) {
            if (state is PlaceLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PlaceLoaded) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Here are the information:"),
                    Text(
                      "Name:",
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text((state).place.name),
                    Text(
                      "Street:",
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text((state).place.street),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("Something went wrong."),
              );
            }
          },
        ),
      ),
    );
  }
}

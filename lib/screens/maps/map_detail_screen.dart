import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zavod_demo/model/place.dart';

@RoutePage()
class MapDetailScreen extends StatelessWidget {
  const MapDetailScreen({
    required this.place,
    super.key,
  });

  final Place place;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Padding(
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
            Text(place.name),
            Text(
              "Street:",
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(place.street),
          ],
        ),
      ),
    );
  }
}

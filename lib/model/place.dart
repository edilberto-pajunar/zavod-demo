import 'package:equatable/equatable.dart';

class Place extends Equatable {
  final String name;
  final String street;

  const Place({
    required this.name,
    required this.street,
  });

  factory Place.fromJson(json) {
    return Place(
      name: json["name"],
      street: json["street"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "street": street,
    };
  }

  @override
  List<Object?> get props => [
        name,
        street,
      ];
}

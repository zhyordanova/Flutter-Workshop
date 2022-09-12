// ignore_for_file: always_specify_types

import 'package:travel_app/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/new_zealand.jpg',
    city: 'New Zealand',
    country: 'Pacific Ocean',
    description:
        'Across New Zealand, you can find everything from untamed wilderness to rich culture',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/sydney.jpg',
    city: 'Sydney',
    country: 'Australia',
    description: 'Visit Sydney for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bora-bora.jpg',
    city: 'Bora Bora',
    country: 'French Polynesia',
    description:
        'Visit Bora Bora for unlimited water adventure and breathtaking hikings',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/oahu-hawaii.jpg',
    city: 'Hawaii',
    country: 'United States',
    description: 'Explore the Islands of Aloha to find your own heavenly',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/alaska.jpg',
    city: 'Alaska',
    country: 'United States',
    description:
        'Alaska is more than a pretty picture: it’s your rejuvenation destination',
    activities: activities,
  ),
];

// ignore_for_file: always_specify_types

class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/hobbiton-movie-set.jpg',
    name: 'Hobbiton Movie Set Tour',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/hop-on-hop-off.jpg',
    name: 'Hop-on Hop-off Tour',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 310,
  ),
  Activity(
    imageUrl: 'assets/images/lagoon-tour.jpg',
    name: 'Lagoon Tour',
    type: 'Snorkeling Adventure',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 525,
  ),
  Activity(
    imageUrl: 'assets/images/pearl-harbor.jpg',
    name: 'Pearl Harbor',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 am', '12:00 pm', '3:30 pm'],
    rating: 3,
    price: 525,
  ),
  Activity(
    imageUrl: 'assets/images/humpback_jumping.jpg',
    name: 'Whale Watching',
    type: 'Explore the wilds of Alaska',
    startTimes: ['08:30 am', '1:30 pm'],
    rating: 3,
    price: 925,
  ),
];

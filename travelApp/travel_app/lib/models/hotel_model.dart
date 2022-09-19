class Hotel {
  final String imageUrl;
  final String name;
  final String address;
  final int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/sofitel.jpg',
    name: 'Sofitel Wellington',
    address: '11 Bolton Street, Wellington 6011 New Zealand',
    price: 1475,
  ),
  Hotel(
    imageUrl: 'assets/images/four-seasons.jpg',
    name: 'Four Seasons',
    address: '199 George Street, Sydney, NSW 2000 Australia',
    price: 2720,
  ),
  Hotel(
    imageUrl: 'assets/images/intercontinental.jpg',
    name: 'InterContinental',
    address: 'Point Matira Bp 156, Vaitape 98730',
    price: 3489,
  ),
  Hotel(
    imageUrl: 'assets/images/hilton.jpg',
    name: 'Hilton Hawaiian',
    address: '2005 Kalia Road, Honolulu, O\'ahu, HI 96815, United States',
    price: 2489,
  ),
  Hotel(
    imageUrl: 'assets/images/puffin-inn.jpg',
    name: 'Puffin Inn',
    address: '4400 Spenard Road, Anchorage, AK 99517, United States',
    price: 1989,
  ),
];

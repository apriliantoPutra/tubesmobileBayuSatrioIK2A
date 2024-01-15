class User {
  String? id;
  String? name;
  String? image;
  double? rating;
  int? offer;

  User({this.id, this.image, this.name, this.offer, this.rating});
}

final listUser = [
  User(
    id: 'user0',
    image: 'asset/jon.jpg',
    name: 'Dr. Jhony',
    offer: 34,
    rating: 5,
  ),
  User(
  id: 'user1',
  image: 'asset/dokter/doctor5.jpg',
  name: 'Dr. Tirta',
  offer: 32,
  rating: 4.5,
),

  User(
    id: 'user2',
    image: 'asset/dokter/doctor6.jpeg',
    name: 'Dr. Roshid',
    offer: 49,
    rating: 4.1,
  ),
  User(
    id: 'user3',
    image: 'asset/dokter/doctor4.jpeg',
    name: 'Dr. Ami',
    offer: 25,
    rating: 4,
  ),
];
import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;
  final String? about;
  final List? photos;

  const DestinationModel(
      {required this.id,
      this.name = '',
      this.city = '',
      this.imageUrl = '',
      this.price = 0,
      this.rating = 0.0,
      this.about = '',
      required this.photos});

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
        about: json['about'],
        photos: json['photos'],
      );

  Map<String, dynamic> destinationToJSON() => {
        'id': id,
        'name': name,
        'city': city,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price
      };

  @override
  List<Object?> get props =>
      throw [id, name, city, imageUrl, rating, price, about, photos];
}

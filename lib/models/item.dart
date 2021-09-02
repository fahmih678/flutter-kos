class Item {
  final int id;
  final String name;
  final String imageUrl;
  final int price;
  final String city;
  final String province;
  final int rate;
  final String duration;

  final String address;
  final String phone;
  final String mapUrl;
  final List<String> photos;
  final int numberOfKitchens;
  final int numberOfBedrooms;
  final int numberOfcupboards;

  Item(
      {this.id = 1,
      this.imageUrl = '',
      this.name = '',
      this.rate = 0,
      this.price = 0,
      this.duration = 'month',
      this.city = 'Surakarta',
      this.province = 'Jawa Tengah',
      this.address = '',
      this.phone = '',
      this.mapUrl = '',
      this.photos = const [],
      this.numberOfKitchens = 0,
      this.numberOfBedrooms = 0,
      this.numberOfcupboards = 0});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      province: json['country'],
      imageUrl: json['image_url'],
      price: json['price'],
      rate: json['rating'],
      address: json['address'],
      phone: json['phone'],
      photos: json['photos'],
      mapUrl: json['map_url'],
      numberOfBedrooms: json['number_of_bedrooms'],
      numberOfcupboards: json['number_of_cupboards'],
      numberOfKitchens: json['number_of_kitchens'],
    );
  }
}

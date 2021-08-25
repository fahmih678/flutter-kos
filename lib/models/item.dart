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

  Item({
    this.id=1,
    this.imageUrl ='',
    this.name = '',
    this.rate = 0,
    this.price = 0,
    this.duration = 'month',
    this.city = 'Surakarta',
    this.province='Jawa Tengah',
    this.address = '',
    this.phone = '', 
    this.mapUrl = '', 
    this.photos =const[], 
    this.numberOfKitchens = 0, 
    this.numberOfBedrooms = 0, 
    this.numberOfcupboards = 0
  });

  factory Item.fromJson(Map<String, dynamic> json){
    return Item(
      id: json['id'] as int,
      name : json['name'] as String,
      city: json['city'] as String,
      province : json['country'] as String,
      imageUrl : json['image_url'] as String,
      price : json['price'] as int,
      rate : json['rating'] as int,
      address : json['address'] as String,
      phone : json['phone'] as String,
      photos: List<String>.from(json['photos'].map((x)=> x)),
      mapUrl : json['map_url'] as String,
      numberOfBedrooms : json['number_of_bedrooms'] as int,
      numberOfcupboards : json['number_of_cupboards'] as int,
      numberOfKitchens : json['number_of_kitchens'] as int,
    );
  }
}
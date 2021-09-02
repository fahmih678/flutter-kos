import 'package:bwa_cozy/models/blog.dart';
import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/item.dart';
import 'package:bwa_cozy/providers/item_provider.dart';
import 'package:bwa_cozy/widgets/blog_card.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late Future<List<Item>> futureData = fetchData();

    return SafeArea(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Now',
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Mencari kosan yang cozy',
                      style: subTitleTextStyle,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Popular Cities',
                      style: subTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  padding: EdgeInsets.only(left: 24),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      City(
                        id: 0,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/popular1.png',
                        isFavorite: true,
                      ),
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Bandung',
                        imageUrl: 'assets/images/popular2.png',
                      ),
                    ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/popular3.png',
                      ),
                    ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surakarta',
                        imageUrl: 'assets/images/popular2.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Note Recomended Space
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended Space',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children:
                          // data.map((item) => ItemCard(item)).toList(),
                          [
                        ItemCard(
                          Item(
                            id: 1,
                            name: 'rumah eko',
                            imageUrl: 'assets/images/recommended1.png',
                            price: 200,
                            city: 'Solo',
                            province: 'Jawa Tengah',
                            rate: 3,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Tips & Guadance',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        BlogCart(
                          Blog(
                            imageUrl: 'assets/images/tips1.png',
                            name: 'City Guidelines',
                            status: 'Updated 20 Apr',
                          ),
                        ),
                        BlogCart(
                          Blog(
                            imageUrl: 'assets/images/tips2.png',
                            name: 'Jakarta Fairship',
                            status: 'Updated 11 Dec',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 130,
              ),
              FutureBuilder<List<Item>>(
                  future: futureData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Item> data = snapshot.data!;
                      return Column(
                        children: data.map((e) => ItemCard(e)).toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Text(
                        '${snapshot.hasError}',
                      );
                    }
                    return const CircularProgressIndicator();
                  })
            ],
          ),
        ],
      ),
    );
  }
}

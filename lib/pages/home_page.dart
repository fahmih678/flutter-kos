import 'package:bwa_cozy/models/blog.dart';
import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/item.dart';
import 'package:bwa_cozy/providers/item_provider.dart';
import 'package:bwa_cozy/widgets/blog_card.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;

class HomePage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    

    return Scaffold(
      // todo Floating Navbar Bottom
      floatingActionButton: buttomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Now',
                      style: titleTextStyle,
                    ),
                    SizedBox(height: 2,),
                    Text(
                      'Mencari kosan yang cozy',
                      style: subTitleTextStyle,
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Popular Cities',
                      style: subTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
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
                        isFavorite: true
                      )
                      ),
                      CityCard(
                        City(
                          id: 1,
                          name: 'Bandung',
                          imageUrl: 'assets/images/popular2.png'
                        )
                      ),
                      CityCard(
                        City(
                          id: 2,
                          name: 'Surabaya',
                          imageUrl: 'assets/images/popular3.png'
                        )
                      ),
                      CityCard(
                        City(
                          id: 3,
                          name: 'Surakarta',
                          imageUrl: 'assets/images/popular2.png'
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
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
                      SizedBox(height: 16,),
                      FutureBuilder(
                        future:itemProvider.getRecommendedItems(),
                        builder: (context, snapshot){
                          if(snapshot.hasData){
                            // List<Item> data = snapshot.data!;
                            // print(data);
                            return Column(
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
                                  )
                                ),
                              ],
                            );
                          } else if (snapshot.hasError){
                            return Text('${snapshot.error}');
                          } 
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      ),
                      Text('Tips & Guadance', style: subTextStyle,),
                      SizedBox(height: 16,),
                      Column(
                        children: [
                          BlogCart(
                            Blog(
                              imageUrl: 'assets/images/tips1.png',
                              name: 'City Guidelines',
                              status: 'Updated 20 Apr',
                            )
                          ),
                          BlogCart(
                            Blog(
                              imageUrl: 'assets/images/tips2.png',
                              name: 'Jakarta Fairship',
                              status: 'Updated 11 Dec',
                            )
                          ),
                        ],
                      ) 
                    ],
                  ),
                ),
                SizedBox(height: 130,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttomNavbar() {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
    child: Container(
      height: 65,
      width: 327,
      decoration: BoxDecoration(
        color: boxBgColor,
        borderRadius: BorderRadius.circular(23)
      ),
      padding: EdgeInsets.only(top:19, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavbarItem(
            imageActiveUrl: 'assets/images/icon_home_active.png',
            imageUrl: 'assets/images/icon_home.png',
            isActive: false,
          ),
          BottomNavbarItem(
            imageActiveUrl: 'assets/images/icon_mail_active.png',
            imageUrl: 'assets/images/icon_mail.png',
            isActive: true,
          ),
          BottomNavbarItem(
            imageActiveUrl: 'assets/images/icon_card_active.png',
            imageUrl: 'assets/images/icon_card.png',
            isActive: false,
          ),
          BottomNavbarItem(
            imageActiveUrl: 'assets/images/icon_love_active.png',
            imageUrl: 'assets/images/icon_love.png',
            isActive: false,
          ),
        ],
      ),
    ),
  );
}

class DataList extends StatelessWidget {
  const DataList({Key? key, required this.data}) : super(key: key);

  final List<Item> data;
  

 @override
  Widget build(BuildContext context) {
    return Text('data');
    // return ListView.builder(
    //   itemCount: data.le,
    //   itemBuilder: (context, index){
    //     ItemCard(
    //       Item(
    //         id: data[index].id,
    //         name: data[index].name,
    //         imageUrl: data[index].imageUrl,
    //         address: data[index].address,
    //         city: data[index].city,
    //         mapUrl: data[index].mapUrl,
    //         phone: data[index].phone,
    //         photos: data[index].photos,
    //         province: data[index].province,
    //         price: data[index].price,
    //         rate: data[index].rate,
    //         numberOfBedrooms: data[index].numberOfBedrooms,
    //         numberOfKitchens: data[index].numberOfKitchens,
    //         numberOfcupboards: data[index].numberOfcupboards,
    //         duration: data[index].duration
    //       )
    //     );
    //   }
    // );
  }
}
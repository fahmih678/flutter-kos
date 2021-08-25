import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/widgets/rating_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bwa_cozy/widgets/icon_facility.dart';
import 'package:bwa_cozy/widgets/photo_detail.dart';



// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchUrl (String url) async{
      if(await canLaunch(url)){
        launch(url);
      } else {
        // throw(url);
        Navigator.push(context,MaterialPageRoute(
            builder: (context) => ErrorPage()
          ),  
        );
      }
    }
    
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/detail_pic.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 24, right: 24),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Kureta Hott',
                                  style: titleTextStyle,
                                ),
                                Row(
                                  
                                  children: [
                                    Text(
                                      '\Rp28000 ',
                                      style: priceTextStyle,
                                    ),
                                    Text(
                                      '/ month',
                                      style: timeTextStyle,
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: 108,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [1,2,3,4,5].map((index){
                                  return Container(
                                    child:RatingItem(
                                      index: index,
                                      rating: 3,
                                    ) ,
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                        // NOTE Main Facilities
                        SizedBox(height: 30,),
                        Text(
                          'Main Facilities',
                          style: subTextStyle,
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconFacility(
                              name: 'Kitchen',
                              imageUrl: 'assets/images/icon_bar.png',
                              total: 4
                            ),
                            IconFacility(
                              name: 'Bed',
                              imageUrl: 'assets/images/icon_bed.png',
                              total: 2
                            ),
                            IconFacility(
                              name: 'Storage',
                              imageUrl: 'assets/images/icon_storage.png',
                              total: 5
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text(
                          'Photos',
                          style: subTextStyle,
                        ),
                        SizedBox(height: 12,),
                      ],
                    ),
                  ),
                  Container(
                    color: whiteColor,
                    height: 110 ,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      scrollDirection: Axis.horizontal,
                      children: [
                        PhotoDetail(
                          imageUrl: 'assets/images/detail1.png'
                        ),
                        SizedBox(width: 18,),
                        PhotoDetail(
                          imageUrl: 'assets/images/detail2.png'
                        ),
                        SizedBox(width: 18,),
                        PhotoDetail(
                          imageUrl: 'assets/images/popular2.png'
                        ),
                        SizedBox(width: 18,),
                        PhotoDetail(
                          imageUrl: 'assets/images/detail1.png'
                        ),
                        SizedBox(width: 18,),
                        PhotoDetail(
                          imageUrl: 'assets/images/detail2.png'
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: subTextStyle,
                            ),
                            SizedBox(height: 6,),
                            Row(
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20\nPalembang',
                                  style: subTitleTextStyle,
                                ),
                                Spacer(),
                                InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: (){
                                    _launchUrl('https://www.google.com');
                                  },
                                  child:  Image.asset(
                                    'assets/images/btn_map.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                )
                              ],
                            ),
                            
                          ],
                        ),
                        SizedBox(height: 40,),
                        Container(
                          width: 327,
                          height: 50,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                              backgroundColor: blueColor
                            ),
                            onPressed: (){
                              _launchUrl('httw.google.com');
                            },
                            child: Text(
                              'Book Now',
                              style: btnTextStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/btn_back.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/images/btn_wishlist.png',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
            ],
          )
        ) ,
    
    );
  } 
}
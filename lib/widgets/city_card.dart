import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/city.dart';

class CityCard extends StatelessWidget{

  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            color: boxBgColor,
            height: 150,
            width: 120,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      city.imageUrl,
                      height: 102,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: city.isFavorite 
                          ? Container(
                            alignment: Alignment.center,
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                              ),
                              child: Image.asset(
                                'assets/images/icon_star.png',
                                height: 22,
                                width: 22,
                              )
                          ) 
                          : Container(),
                    )
                  ]
                ),
                SizedBox(height: 11,),
                Text(
                  city.name,
                  style: itemRowTextStyle,
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 20,)
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class IconFacility extends StatelessWidget{
  final String imageUrl;
  final int total;
  final String name;

  IconFacility({
    this.imageUrl = '',
    this.total = 0,
    this.name = ''
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          height: 32,
          width: 32,
        ),
        SizedBox(height: 8,),
        Row(
          children: [
            Text(
              '$total ',
              style:priceTextStyle.copyWith(fontSize: 14) ,
            ),
            Text(
              name,
              style: statusTextStyle,
            )
          ],
        )
      ],
    );
  }
}
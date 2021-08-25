import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({required this.index,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/icon_star.png',
      height: 20,
      width: 20,
      color: index<= rating? Colors.orange :Color(0xff989BA1),
    );
  }
}
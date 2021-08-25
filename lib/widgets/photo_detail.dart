import 'package:flutter/material.dart';
// import 'package:bwa_cozy/theme.dart';

class PhotoDetail extends StatelessWidget{
  final String imageUrl;

  PhotoDetail({this.imageUrl=''});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 88,
        width: 110,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
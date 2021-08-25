import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final String imageActiveUrl;
  final bool isActive;
  

  BottomNavbarItem({this.imageUrl ='', this.imageActiveUrl= '', this.isActive= false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          isActive ? imageActiveUrl : imageUrl,
          height: 26,
          width: 26,
        ),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: btnBarActiveColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(1000), topRight: Radius.circular(1000))
          ),
        ) : Container()
      ],
    );
  }
}
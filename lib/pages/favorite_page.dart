import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorite Page',
        style: titleTextStyle,
      ),
    );
  }
}

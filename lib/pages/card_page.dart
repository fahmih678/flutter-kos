import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Card Page',
        style: titleTextStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Message Page',
        style: titleTextStyle,
      ),
    );
  }
}

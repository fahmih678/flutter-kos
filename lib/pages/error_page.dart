import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';
// import 'package:bwa_cozy/theme.dart';

class ErrorPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            Image.asset(
              'assets/images/404.png',
              width: 300,
            ),
            SizedBox(height: 70,),
            Text(
              'Where Are You Going?',
              style: titleTextStyle,
            ),
            SizedBox(height: 14,),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: subTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            Container(
              height: 50,
              width: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: blueColor
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder:  (context) => HomePage()
                    ), (route) => false);
                },
                child: Text(
                  'Back to Home',
                  style: btnTextStyle,
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}
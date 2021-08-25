import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/blog.dart';

class BlogCart extends StatelessWidget{
  final Blog blog;

  BlogCart(this.blog);
  
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              blog.imageUrl,
              height: 80,
              width: 80,
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.name,
                  style: itemTextStyle,
                ),
                SizedBox(height: 4,),
                Text(
                  blog.status,
                  style: statusTextStyle,
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.chevron_right,
                size: 24,
                color: Color(0xffC9C9C9),
              )
            )
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
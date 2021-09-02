import 'package:bwa_cozy/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  height: 110,
                  width: 130,
                  child: Column(children: [
                    Stack(children: [
                      Image.asset(
                        item.imageUrl,
                        height: 110,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30)),
                              color: blueColor),
                          height: 30,
                          width: 70,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  '${item.rate}/5',
                                  style: TextStyle(color: whiteColor),
                                )
                              ]),
                        ),
                      )
                    ]),
                  ]),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: itemTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        '\Rp${item.price}',
                        style: priceTextStyle,
                      ),
                      Text(
                        '/ ${item.duration}',
                        style: timeTextStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '${item.city}, ${item.province}',
                    style: statusTextStyle,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}

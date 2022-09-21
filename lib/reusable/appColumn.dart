import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/reusable/BigText.dart';
import 'package:food_develry_app/reusable/smallText.dart';
import 'package:food_develry_app/reusable/text_icon.dart';

class AppColumn extends StatelessWidget {
  final String title;

  AppColumn({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimension.left15,
          right: Dimension.rigth15,
          top: Dimension.bottom15),
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: BigText(
            text: title.toString(),
            size: 19,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SmallText(
              text: '2.4',
              size: 10,
            ),
            SizedBox(
              width: 15,
            ),
            SmallText(
              text: '123  review',
              size: 11,
            )
          ],
        ),
        SizedBox(
          height: Dimension.sizebox10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextIcon(icon: Icons.circle, iconSize: 15, title: 'Home'),
            TextIcon(
                icon: Icons.location_on,
                iconColor: Colors.greenAccent,
                iconSize: 15,
                title: '12Km'),
            TextIcon(
                icon: Icons.watch_later_outlined, iconSize: 15, title: '32min'),
          ],
        )
      ]),
    );
  }
}

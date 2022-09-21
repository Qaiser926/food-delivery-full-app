import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/color/commonColor.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/reusable/BigText.dart';
import 'package:food_develry_app/reusable/appColumn.dart';
import 'package:food_develry_app/reusable/customIcon.dart';
import 'package:food_develry_app/reusable/expandable_text_widgets.dart';
import 'package:food_develry_app/reusable/smallText.dart';
import 'package:food_develry_app/reusable/text_icon.dart';
import 'package:get/get.dart';

class PopularFoodDetailPage extends StatefulWidget {
  const PopularFoodDetailPage({Key? key}) : super(key: key);

  @override
  State<PopularFoodDetailPage> createState() => _PopularFoodDetailPageState();
}

class _PopularFoodDetailPageState extends State<PopularFoodDetailPage> {
  String url =
      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                // height: 250,
                height: Dimension.pageView230,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url),
                  ),
                ),

                // child: Image.network(url),
              )),

          // top icon
          Positioned(
            left: Dimension.bottom15,
            right: Dimension.bottom15,
            top: Dimension.left30,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcons(
                      icon: Icons.arrow_back_ios,
                      onpress: () {
                        Get.back();
                      }),
                  CustomIcons(icon: Icons.shopping_cart_outlined)
                ],
              ),
            ),
          ),

          // design container and temprory comment
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   top: Dimension.pageView230 - 40,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //     ),
          //     child: Column(
          //       children: [BigText(text: 'Biryani')],
          //     ),
          //   ),
          // )
//
          // introduction text
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.pageView230 - 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.bottom15),
                  topRight: Radius.circular(Dimension.bottom15),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(title: 'Chinese Side'),
                  SizedBox(
                    height: Dimension.borderRadius10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: BigText(
                      text: 'Introduce',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: Dimension.borderRadius10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ExpandableTextWidgets(
                          text:
                              "Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,Floor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of FloorFloor as the bottom layer of a Room which points to the analogy of the database layer being the bottom and foundation layer of most applications. Where fl also gives a pointer that the library is used in the Flutter context. Features of Floor,",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.listViewTextCont70,
        padding: EdgeInsets.only(
            top: Dimension.hight30 / 2,
            bottom: Dimension.hight30 / 2,
            left: Dimension.borderRadius20,
            right: Dimension.borderRadius20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.borderRadius20 * 2),
              topRight: Radius.circular(Dimension.borderRadius20 * 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.bottom15),
              ),
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimension.borderRadius10,
                    right: Dimension.borderRadius10,
                    top: Dimension.borderRadius10,
                    bottom: Dimension.borderRadius10),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      size: Dimension.borderRadius20,
                    ),
                    SizedBox(
                      width: Dimension.borderRadius10 / 2,
                    ),
                    BigText(
                      text: '0',
                      size: 17,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: Dimension.borderRadius10 / 2,
                    ),
                    Icon(
                      Icons.add,
                      size: Dimension.borderRadius20,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.circular(Dimension.bottom15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimension.borderRadius10,
                    right: Dimension.borderRadius10,
                    top: Dimension.borderRadius10,
                    bottom: Dimension.borderRadius10),
                child: BigText(
                  text: "\$10 | Add to Cart",
                  color: Colors.white,
                  size: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _textIcon_Row() {
    return Row(
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
    );
  }

  Row _starRow() {
    return Row(
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
    );
  }
}

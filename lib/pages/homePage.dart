import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/color/commonColor.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/pages/food_main_page.dart';
import 'package:food_develry_app/reusable/BigText.dart';
import 'package:food_develry_app/reusable/smallText.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            appBar(),
            Expanded(child: SingleChildScrollView(child: FoodMainPage())),
          ],
        ),
      ),
    );
  }

  Container appBar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(
                        text: 'Pakistan', color: FColor.headingtext, size: 24),
                    SmallText(text: 'Bannu', color: FColor.headingtext),
                  ],
                ),
              ),
              Container(
                  width: Dimension.hight30,
                  height: Dimension.hight30,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimension.borderRadius10),
                    color: FColor.headingtext,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: Dimension.iconSize20,
                  )),
            ]),
      ),
    );
  }
}

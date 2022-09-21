import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/reusable/BigText.dart';
import 'package:food_develry_app/reusable/customIcon.dart';
import 'package:food_develry_app/reusable/expandable_text_widgets.dart';

class RecommendedFoodDetail extends StatelessWidget {
  RecommendedFoodDetail({Key? key}) : super(key: key);
  String slidableImage =
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcons(icon: Icons.clear),
                CustomIcons(icon: Icons.shopping_cart)
              ],
            ),
            toolbarHeight: Dimension.toolbarHeight115,
            backgroundColor: Color(0xff2C1D1E),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(Dimension.borderRadius10 * 2),
                          topRight:
                              Radius.circular(Dimension.borderRadius10 * 2))),
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: Dimension.borderRadius5,
                          bottom: Dimension.borderRadius5),
                      child: BigText(
                        text: 'Pizza Slider',
                        color: Colors.black,
                        size: Dimension.borderRadius20,
                      ),
                    ),
                  ),
                )),
            pinned: true,
            expandedHeight: Dimension.pageViewContainer170,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                slidableImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Dimension.borderRadius20,
                  vertical: Dimension.borderRadius10),
              child: Column(
                children: [
                  ExpandableTextWidgets(
                      text:
                          'What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.What Does Constructor Mean? A constructor is a special method of a class or structure in object-oriented programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.'),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.hight30,
                  vertical: Dimension.borderRadius5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcons(
                    icon: Icons.remove,
                    backgroundColor: Colors.teal,
                    iconColor: Colors.white,
                  ),
                  BigText(
                    text: "\$12.89" + " X " + "0",
                    color: Colors.black,
                  ),
                  CustomIcons(
                    icon: Icons.add,
                    backgroundColor: Colors.teal,
                    iconColor: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.bottom15 * 2),
                      topRight: Radius.circular(Dimension.bottom15 * 2))),
              // margin: EdgeInsets.symmetric(
              //   horizontal: Dimension.borderRadius20,
              // ),
              height: Dimension.containerHeight120,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimension.borderRadius20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimension.bottom15),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  Dimension.borderRadius10)),
                          padding: EdgeInsets.only(
                              left: Dimension.borderRadius10,
                              right: Dimension.borderRadius10,
                              top: Dimension.borderRadius10,
                              bottom: Dimension.borderRadius10),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.teal,
                          )),
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
            )
          ],
        ),
      ),
    );
  }
}

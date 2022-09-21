import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/color/commonColor.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/pages/recommended_food_detail.dart';
import 'package:food_develry_app/reusable/BigText.dart';
import 'package:food_develry_app/reusable/smallText.dart';
import 'package:food_develry_app/reusable/text_icon.dart';
import 'package:get/get.dart';

import 'popularFoodDetailPage.dart';

class FoodMainPage extends StatefulWidget {
  const FoodMainPage({super.key});

  @override
  State<FoodMainPage> createState() => _FoodMainPageState();
}

class _FoodMainPageState extends State<FoodMainPage> {
  PageController pageController = PageController(viewportFraction: 0.85);

  String slidableImage =
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80";
  String url =
      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimension.heigth220;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
      // print('the current page value is : $currPageValue');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('the device hieght is : ' +
        MediaQuery.of(context).size.height.toString());
    print('the device width is : ' +
        MediaQuery.of(context).size.width.toString());
    return Column(
      children: [
        Container(
            // width: double.infinity,
            // color: Colors.red,
            height: Dimension.pageView230,

            // height: 230,
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageview(position);
              },
            )),
        _dotIndicator(),
        _popularFoodrow(),
        _popularFoodDataListView()
      ],
    );
  }

  Align _popularFoodDataListView() {
    return Align(
      child: ListView.builder(
        shrinkWrap: true,
        // physics: AlwaysScrollableScrollPhysics(),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(PopularFoodDetailPage());
              print('now seelected index is : ${index}');
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      // horizontal: Dimension.left15,
                      left: Dimension.left15,
                      top: Dimension.sizebox4),
                  // ),
                  child: Container(
                    width: Dimension.pageViewTextContainer100,
                    height: Dimension.pageViewTextContainer100,
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimension.borderRadius10),
                        child: Image.network(url)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          Dimension.borderRadius10,
                        )),
                    margin: EdgeInsets.only(
                        left: Dimension.sizebox4, right: Dimension.rigth10),
                    height: Dimension.listViewTextCont70,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Dimension.borderRadius10,
                          top: Dimension.borderRadius10,
                          right: Dimension.borderRadius10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: 'Nutritions fruit meal in China',
                            size: 14,
                            color: Colors.black,
                          ),
                          SmallText(
                            text: 'With Chinese Charateristics',
                            size: 10,
                          ),
                          SizedBox(
                            height: Dimension.sizebox10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextIcon(
                                  icon: Icons.circle,
                                  iconSize: 15,
                                  title: 'Home'),
                              TextIcon(
                                  icon: Icons.location_on,
                                  iconColor: Colors.greenAccent,
                                  iconSize: 15,
                                  title: '12Km'),
                              TextIcon(
                                  icon: Icons.watch_later_outlined,
                                  iconSize: 15,
                                  title: '32min'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Padding _popularFoodrow() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimension.left15, vertical: Dimension.bottom10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BigText(
            text: 'Popular',
            size: 14,
            color: Colors.black,
          ),
          SizedBox(
            width: Dimension.bottom10,
          ),
          SmallText(
            text: 'Food Pairing',
            size: Dimension.left10,
          ),
        ],
      ),
    );
  }

  DotsIndicator _dotIndicator() {
    return DotsIndicator(
      dotsCount: 5,
      position: _currPageValue,
      decorator: DotsDecorator(
        activeColor: FColor.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimension.borderRadius5)),
      ),
    );
  }

  Widget _buildPageview(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currscale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currscale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currscale) / 2;

      matrix = Matrix4.diagonal3Values(1, currscale, 1);
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currscale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currscale) / 2;

      matrix = Matrix4.diagonal3Values(1, currscale, 1);
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currscale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          //
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimension.borderRadius20),
            child: InkWell(
              onTap: () {
                Get.to(RecommendedFoodDetail());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.borderRadius10),
                  color: index.isEven ? Colors.amber : Colors.red,
                ),
                margin: EdgeInsets.only(
                    left: Dimension.left10,
                    right: Dimension.rigth10,
                    top: Dimension.top10),
                width: double.infinity,
                height: Dimension.pageViewContainer170,
                // height: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimension.borderRadius10),
                  child: Image.network(
                    slidableImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimension.left30,
                  right: Dimension.rigth30,
                  bottom: Dimension.bottom10),
              height: Dimension.pageViewTextContainer100,
              width: Get.size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  )
                ],
                borderRadius: BorderRadius.circular(Dimension.borderRadius10),
                color: index.isEven ? Colors.white : Colors.white,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimension.borderRadius20),
                  child: Container(
                    margin: EdgeInsets.only(
                        left: Dimension.left15,
                        right: Dimension.rigth15,
                        top: Dimension.bottom15),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: BigText(
                          text: 'Bitter Orange Marinada',
                          size: 14,
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
                          TextIcon(
                              icon: Icons.circle, iconSize: 15, title: 'Home'),
                          TextIcon(
                              icon: Icons.location_on,
                              iconColor: Colors.greenAccent,
                              iconSize: 15,
                              title: '12Km'),
                          TextIcon(
                              icon: Icons.watch_later_outlined,
                              iconSize: 15,
                              title: '32min'),
                        ],
                      )
                    ]),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

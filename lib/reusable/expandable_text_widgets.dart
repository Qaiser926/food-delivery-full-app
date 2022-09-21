import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/color/commonColor.dart';
import 'package:food_develry_app/dimension/dimension.dart';
import 'package:food_develry_app/reusable/smallText.dart';

class ExpandableTextWidgets extends StatefulWidget {
  String? text;
  ExpandableTextWidgets({this.text});
  @override
  State<ExpandableTextWidgets> createState() => _ExpandableTextWidgetsState();
}

class _ExpandableTextWidgetsState extends State<ExpandableTextWidgets> {
  late String firstHalf;
  late String secondHalf;
  double textHeight = Dimension.screenHeight / 5.33;
  bool hiddenText = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.toString().length > textHeight) {
      firstHalf = widget.text!.substring(0, textHeight.toInt());
      secondHalf = widget.text!
          .substring(textHeight.toInt() + 1, widget.text.toString().length);
    } else {
      firstHalf = widget.text.toString();
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? SmallText(text: firstHalf)
            : Column(
                children: [
                  SmallText(
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf),
                    size: 12.7,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: 'Show more',
                          color: FColor.mainColor,
                        ),
                        Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: FColor.mainColor,
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}

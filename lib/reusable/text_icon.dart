import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';

class TextIcon extends StatefulWidget {
  final String title;
  final IconData icon;
  double? textsize;
  double? iconSize;
  Color? color;
  Color? iconColor;
  TextIcon({
    required this.icon,
    required this.title,
    this.iconSize = 0,
    this.textsize = 0,
    this.color = const Color.fromARGB(255, 177, 177, 177),
    this.iconColor = Colors.orange,
  });
  @override
  State<TextIcon> createState() => _TextIconState();
}

class _TextIconState extends State<TextIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: widget.iconSize == 0 ? Dimension.iconSize12 : widget.iconSize,
            color: widget.iconColor,
          ),
          SizedBox(
            width: Dimension.sizebox4,
          ),
          Text(
            widget.title.toString(),
            style: TextStyle(
              color: widget.color,
              fontSize:
                  widget.textsize == 0 ? Dimension.textsize12 : widget.textsize,
            ),
          )
        ],
      ),
    );
  }
}

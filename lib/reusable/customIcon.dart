import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';

class CustomIcons extends StatefulWidget {
  final IconData icon;
  double? size;
  Color? iconColor;
  double? iconSize;
  Color? backgroundColor;
  Function()? onpress;
  CustomIcons({
    required this.icon,
    this.iconColor = const Color(0xff756d54),
    this.iconSize,
    this.size = 40,
    this.backgroundColor = const Color(0xfffcf4e4),
    this.onpress,
  });

  @override
  State<CustomIcons> createState() => _CustomIconsState();
}

class _CustomIconsState extends State<CustomIcons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpress,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            widget.size! / 2,
          ),
          color: widget.backgroundColor,
        ),
        child: Icon(
          widget.icon,
          color: widget.iconColor,
          size: 16,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';

class BigText extends StatefulWidget {
  final String text;
  final double size;
  TextOverflow overflow;
  Color color;
  BigText(
      {super.key,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 0,
      this.color = const Color(0xffce93d8)});

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      maxLines: 1,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.size == 0 ? Dimension.textsize20 : widget.size,
          overflow: widget.overflow),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_develry_app/dimension/dimension.dart';

class SmallText extends StatefulWidget {
  final String text;
  final double size;
  double hieght;
  Color color;
  SmallText(
      {super.key,
      required this.text,
      this.size = 0,
      this.hieght = 1.2,
      this.color = const Color.fromARGB(255, 177, 177, 177)});

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.size == 0 ? Dimension.textsize12 : widget.size,
          height: widget.hieght,
          letterSpacing: 0.4),
    );
  }
}

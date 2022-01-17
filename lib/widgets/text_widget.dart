import 'package:flutter/material.dart';

import 'get_device_size.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? lines;
  const TextWidget(
      {required this.text,
        this.color,
        this.size,
        this.textAlign,
        this.lines,
        this.fontWeight});

  @override
  Widget build(BuildContext context) {
    final screenSize = GetDeviceSize.getDeviceSize(context);
    double fontSize =
    screenSize.width <= 600 ? screenSize.width / 26 : screenSize.width / 38;
    return Text(
      text.toString(),
      overflow: lines == 0 ? TextOverflow.visible : TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
          fontSize: size == null
              ? 15.0
              : fontSize +
              (screenSize.width <= 600 ? size : size! * 1.6 + 1)!
                  .toDouble(),
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black),
    );
  }
}

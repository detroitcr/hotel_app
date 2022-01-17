import 'package:flutter/material.dart';
import 'package:hotel_ui/widgets/text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Color backgroundColor;
  const CustomAppBar({
    Key? key,
    required this.text,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      title: TextWidget(
        text: text.toString(),
        size: 6.0,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

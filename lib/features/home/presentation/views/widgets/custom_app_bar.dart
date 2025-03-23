import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.menu_outlined),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bell)),
        CircleAvatar(backgroundImage: AssetImage("assets/images/anime.jpg",)),
      ],
    );
  }
}
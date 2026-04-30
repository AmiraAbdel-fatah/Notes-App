import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom _icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed,),
      ],
    );
  }
}

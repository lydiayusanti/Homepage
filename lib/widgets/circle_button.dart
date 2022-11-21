import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class circleButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;

  const circleButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: Image.asset(
        icon,
        width: 10,
        color: Colors.white,
      ),
    );
  }
}

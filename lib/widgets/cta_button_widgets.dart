import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CtaButtonWidgets extends StatelessWidget {
  final Text text;
  final Icon icon;
  final Color backgroundColor;
  final void Function()? onPressed;
  const CtaButtonWidgets({
    required this.text,
    required this.icon,
    required this.backgroundColor,
    this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(MediaQuery.of(context).size.width, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
      ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          icon,
          const SizedBox(width: 4.0),
          text,
         ],
      ),
    );
  }
}
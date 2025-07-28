import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.backgroundColor,
      this.textColor,
      this.shape});
  final String text;
  final Color? textColor;
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<OutlinedBorder?>? shape;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            backgroundColor ?? WidgetStatePropertyAll(Colors.yellow),
        shape: shape ??
            WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
            ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

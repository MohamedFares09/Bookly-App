
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              )),
        ),
        border: buildOutlineinputbuilder(),
        enabledBorder: buildOutlineinputbuilder(),
        focusedBorder: buildOutlineinputbuilder(),
      ),
    );
  }
}

OutlineInputBorder buildOutlineinputbuilder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      width: 1,
      color: Colors.white,
    ),
  );
}

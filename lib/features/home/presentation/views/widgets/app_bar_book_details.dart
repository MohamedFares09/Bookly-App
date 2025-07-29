import 'package:flutter/material.dart';

class AppBarBookDetails extends StatelessWidget {
  const AppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}

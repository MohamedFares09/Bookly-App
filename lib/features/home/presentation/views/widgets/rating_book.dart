import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text('4.8'),
        SizedBox(
          width: 5,
        ),
        Text('(2250)')
      ],
    );
  }
}

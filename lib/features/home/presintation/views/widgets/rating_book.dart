
import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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

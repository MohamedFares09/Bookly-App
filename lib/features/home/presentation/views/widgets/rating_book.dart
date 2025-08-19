import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({
    super.key, required this.rating, required this.count,
  });
  final int rating; 
  final int count ; 
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
        Text('$rating'),
        SizedBox(
          width: 5,
        ),
        Text('($count)')
      ],
    );
  }
}

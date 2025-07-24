import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplahViewBody extends StatelessWidget {
  const SplahViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetsData.logo),
    );
  }
}

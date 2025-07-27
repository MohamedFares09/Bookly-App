import 'package:bookly_app/features/home/presintation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});
  static String id = "/homeview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}

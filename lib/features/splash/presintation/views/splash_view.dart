import 'package:bookly_app/features/splash/presintation/views/widgets/splah_view_body.dart';
import 'package:flutter/material.dart';

class SplahSView extends StatelessWidget {
  const SplahSView({super.key});
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplahViewBody(),
    );
  }
}

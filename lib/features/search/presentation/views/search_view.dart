import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = "/searchview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchViewBody(),
    );
  }
}

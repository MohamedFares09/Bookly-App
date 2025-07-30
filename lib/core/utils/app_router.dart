import 'package:bookly_app/features/home/presentation/views/home_views.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presintation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: SplahSView.id, builder: (context, state) => SplahSView()),
    GoRoute(path: SearchView.id, builder: (context, state) => SearchView()),
    GoRoute(path: HomeViews.id, builder: (context, state) => HomeViews()),
    GoRoute(
        path: BookDetailsView.id,
        builder: (context, state) => BookDetailsView()),
  ]);
}

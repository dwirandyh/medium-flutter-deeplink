import 'package:go_router/go_router.dart';
import 'package:medium_deeplink/home_page.dart';
import 'package:medium_deeplink/news_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/news/:id/:path",
    name: "news",
    builder: (context, state) => NewsPage(
      userId: state.params["id"].toString(),
      path: state.params["path"].toString(),
    ),
  )
]);

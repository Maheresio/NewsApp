import 'package:go_router/go_router.dart';

import '../../features/details/view/news_details_view.dart';
import '../../features/home/view/view_all_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../../models/news_model.dart';
import '../helpers/custom_transition_page.dart';
import '../widgets/bottom_navigation_bar.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kNewsDetailsView = '/newsDetailsView';
  static const kViewAllView = '/viewAllView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const BottomNavBar();
        },
        pageBuilder:
            (context, state) => buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: const BottomNavBar(),
            ),
      ),
      GoRoute(
        path: kNewsDetailsView,
        builder: (context, state) {
          return NewsDetailsView(newsItem: state.extra as NewsModel);
        },
        pageBuilder:
            (context, state) => buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: NewsDetailsView(newsItem: state.extra as NewsModel),
            ),
      ),
      GoRoute(
        path: kViewAllView,
        builder: (context, state) {
          return ViewAllView(listType: state.extra as String);
        },
        pageBuilder:
            (context, state) => buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: ViewAllView(listType: state.extra as String),
            ),
      ),
    ],
  );
}

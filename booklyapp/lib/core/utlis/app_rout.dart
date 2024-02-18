import 'package:booklyapp/features/home/presentation/view/homeView.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRout {

  static const homeview='/homeView';

static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ), GoRoute(
      path: homeview,
      builder: (context, state) => const HomeView(),
    ),
  ],
);}


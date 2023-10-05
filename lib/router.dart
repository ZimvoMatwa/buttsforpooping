import 'package:auto_route/auto_route.dart';
import 'package:blockbucks/features/boleka/presentation/pages/boleka_home_page.dart';
import 'package:blockbucks/features/home/presentation/pages/home_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: HomePage, path: '/homePage'),
  AutoRoute(page: BolekaHomePage, path: '/bolekaHomePage')
])
class $AppRouter {}

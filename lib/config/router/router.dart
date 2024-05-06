import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/auto_route_config.dart';
import 'package:zavod_demo/config/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MapDetailRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: SupportRoute.page),
      ];
}

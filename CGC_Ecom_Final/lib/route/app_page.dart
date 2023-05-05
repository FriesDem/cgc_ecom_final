import 'package:cgc_ecom_final/route/app_route.dart';
import 'package:cgc_ecom_final/view/dashboard/dashboard_binding.dart';
import 'package:cgc_ecom_final/view/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class AppPage {
  static var list = [
    GetPage(name: AppRoute.dashboard, page: () => const DashboardScreen(), binding: DashboardBinding())
  ];
}
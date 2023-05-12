import 'package:cgc_ecom_final/controller/category_controller.dart';
import 'package:cgc_ecom_final/controller/dashboard_controller.dart';
import 'package:cgc_ecom_final/controller/home_controller.dart';
import 'package:cgc_ecom_final/controller/product_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
    Get.put(ProductController());
    Get.put(CategoryController());
  }

}
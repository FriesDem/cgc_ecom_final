import 'package:cgc_ecom_final/model/ad_banner.dart';
import 'package:cgc_ecom_final/model/category.dart';
import 'package:cgc_ecom_final/model/product.dart';
import 'package:cgc_ecom_final/route/app_page.dart';
import 'package:cgc_ecom_final/route/app_route.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cgc_ecom_final/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  //register adapters

  Hive.registerAdapter(AdBannerAdapter());
  Hive.registerAdapter(CategoryAdapter());
  Hive.registerAdapter(ProductAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}

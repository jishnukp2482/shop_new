import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';
import 'package:shop_new/presentation/routes/appp_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.splash,
      getPages: AppRoutes.routes,
    );
  }
}

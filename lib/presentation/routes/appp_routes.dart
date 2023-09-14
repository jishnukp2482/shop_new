import 'package:get/get.dart';
import 'package:shop_new/presentation/pages/bottombar.dart';
import 'package:shop_new/presentation/pages/dashboard.dart';
import 'package:shop_new/presentation/pages/auth/loginpage.dart';
import 'package:shop_new/presentation/pages/auth/otp_screen.dart';
import 'package:shop_new/presentation/pages/product/add_product_page.dart';
import 'package:shop_new/presentation/pages/splash.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';

import '../bindings/logincntlbinding.dart';

class AppRoutes {
  static List<GetPage> routes = [
    GetPage(name: AppPages.splash, page: () => Splashscreen()),
    GetPage(name: AppPages.login, page: () => LoginPage()),
    GetPage(name: AppPages.dashboard, page: () => DashBoard()),
    GetPage(
        name: AppPages.bottomnav, page: () => MyCustomBottomNavigationBar()),
    GetPage(
        name: AppPages.otpscreen,
        page: () => OtpScreen(),
        binding: Logincntlrbinding()),
    GetPage(name: AppPages.addProduct, page: () => AddProduct()),
  ];
}

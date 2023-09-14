import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/pages/product/product_page.dart';
import '../themes/app_colors.dart';
import 'dashboard.dart';
import 'order/order.dart';

class MyCustomBottomNavigationBar extends StatefulWidget {
  const MyCustomBottomNavigationBar({
    super.key,
  });

  @override
  State<MyCustomBottomNavigationBar> createState() =>
      _MyCustomBottomNavigationBarState();
}

class _MyCustomBottomNavigationBarState
    extends State<MyCustomBottomNavigationBar> {
  int selectedindex = 0;

  List bodys = [
    DashBoard(),
    OrderPage(),
    Productpage(),
    Card(),
  ];
  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    void onitemtapped(int index) {
      setState(() {
        selectedindex = index;
      });
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.workspaces_outlined), label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Account"),
          ],
          currentIndex: selectedindex,
          onTap: onitemtapped,
          selectedItemColor: AppColors.maincolor,
          unselectedItemColor: AppColors.black,
          type: BottomNavigationBarType.fixed,
        ),
        body: Center(
          child: bodys.elementAt(selectedindex),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';
import 'package:shop_new/presentation/widgets/product_list.dart';

import '../../themes/app_colors.dart';

class Productpage extends StatelessWidget {
  const Productpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
          style: TextStyle(color: AppColors.white),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.white,
            )),
        centerTitle: true,
        backgroundColor: AppColors.maincolor,
      ),
      body: ListView(
        children: [ProductMenu()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppPages.addProduct);
        },
        child: Icon(Icons.add),
        backgroundColor: AppColors.maincolor,
      ),
    ));
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';
import 'package:shop_new/presentation/widgets/orderModal.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.maincolor,
        title: Text(
          "Orders",
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          orderMenu(),
        ],
      ),
    ));
  }
}

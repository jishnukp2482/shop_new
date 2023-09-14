import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';
import 'package:shop_new/presentation/widgets/product_list.dart';

import '../widgets/dashboard_grid.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.maincolor,
        automaticallyImplyLeading: false,
        title: Text(
          "Home",
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          DashBoardMenu(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}

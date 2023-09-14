import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';

import '../../domain/entities/dashboardModal.dart';
import '../manager/homecntlr.dart';

class DashBoardMenu extends StatefulWidget {
  const DashBoardMenu({super.key});

  @override
  State<DashBoardMenu> createState() => _DashBoardMenuState();
}

class _DashBoardMenuState extends State<DashBoardMenu> {
  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.put(HomeCntlr());
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: homecontroller.dashboarditemlist.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DashboardGridItem(
            modal: homecontroller.dashboarditemlist[index]);
      },
    );
  }
}

class DashboardGridItem extends StatelessWidget {
  DashboardGridItem({super.key, required this.modal});
  final DashBoardModal modal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modal.ontap();
      },
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                modal.title,
                style: TextStyle(
                  color: AppColors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                modal.count,
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}

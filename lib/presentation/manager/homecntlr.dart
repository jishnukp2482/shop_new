import 'package:get/get.dart';
import 'package:shop_new/presentation/pages/product/add_product_page.dart';
import 'package:shop_new/presentation/routes/App_Pages.dart';

import '../../domain/entities/dashboardModal.dart';

class HomeCntlr extends GetxController {
  final dashboarditemlist = <DashBoardModal>[
    DashBoardModal("Orders", "10", () {}),
    DashBoardModal("Total sales", "1000", () {}),
  ];
}

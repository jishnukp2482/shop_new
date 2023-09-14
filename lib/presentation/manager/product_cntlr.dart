import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/product_modal.dart';

class Productcntlr extends GetxController {
  final productlist = <ProductModal>[
    ProductModal(
        "Mobile1",
        "18000",
        "15999",
        "assets/img1.jpeg",
        "assets/img1.jpeg",
        "assets/img1.jpeg",
        "smart phone",
        "good phone",
        "amoled ",
        "10",
        "1234567890"),
    ProductModal(
        "Mobile2",
        "20000",
        "18999",
        "assets/img1.jpeg",
        "assets/img1.jpeg",
        "assets/img1.jpeg",
        "smart phone",
        "gaming phone",
        "super battery ",
        "5",
        "987654321"),
  ];

  final prodcuctNamecntlr = TextEditingController();
  final prodcuctPricecntlr = TextEditingController();
  final prodcuctDiscountcntlr = TextEditingController();
  final prodcuctCategorycntlr = TextEditingController();
  final prodcuctDescriptioncntlr = TextEditingController();
  final prodcuctFeaturecntlr = TextEditingController();
  final prodcuctStockCountcntlr = TextEditingController();
  final prodcuctSellerContactNocntlr = TextEditingController();
}
